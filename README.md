# Unreal Engine 4 Runtime on Red Hat UBI

## Getting Started

### 1. Host must have the nVidia Container Runtime enabled

```bash
# Enable repos
distribution=$(. /etc/os-release;echo $ID$VERSION_ID)
curl -s -L https://nvidia.github.io/nvidia-container-runtime/$distribution/nvidia-container-runtime.repo | \
  sudo tee /etc/yum.repos.d/nvidia-container-runtime.repo
dnf update -y

# Install CDK
dnf install nvidia-container-runtime
```

### 2. Host must have nVidia GPU Drivers installed

Disable Nouveau drivers first!

```bash
dnf groupinstall "Server with GUI" "base-x" "Legacy X Window System Compatibility" "Development Tools"
dnf install -y elfutils-libelf-devel gcc make kernel-headers kernel-devel acpid libglvnd-glx libglvnd-opengl libglvnd-devel pkgconfig

wget https://us.download.nvidia.com/XFree86/Linux-x86_64/460.56/NVIDIA-Linux-x86_64-460.56.run
chmod +x NVIDIA-Linux-x86_64-460.56.run
./NVIDIA-Linux-x86_64-460.56.run
```

### Testing GPUs

```bash
nvidia-smi
podman run --rm --privileged --hooks-dir /usr/share/containers/oci/hooks.d docker.io/nvidia/cudagl:11.2.0-runtime-centos8 nvidia-smi
```
