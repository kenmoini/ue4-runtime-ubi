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
