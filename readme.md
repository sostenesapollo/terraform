### Useful commands

> Configure locally aws profile with your credentials
```bash
aws configure --profile "tf01"
```

> Install
```bash
terraform init
```

> Init Backend
```bash
terraform init -backend=true -backend-config="backend.hcl"
```

> Run changes
```bash
terraform apply
```

```bash
TFENV_ARCH=amd64 tfenv install 0.14.4 
tfenv use 0.14.4
```

```bash
terraform apply -var="env=dev" -auto-approve
```

```bash
terraform apply -var="env=prod" -auto-approve
```

```bash
terraform destroy -var="env=prod" -auto-approve
```
