# Details

Example files for using "group" and "environment" files.

The example files for using the variable values in the files are in
`components/base/`.

The variable definitions should be with the component; the variable values
should be in the `etc/` directory.


## Group files
The two `group_` files are in the `etc/` directory, one for dev and one for prod.

To apply for development, you would run terraform scaffold, passing a group
parameter of `dev`. This will be appended to the prefix `group_` creating
the full filename of `group_dev.tfvars` which is then used in the terraform
command.

## Environment files
The `env_eu-west-1_dev*` files are in the `etc/` directory, one for each
environment.

To apply for dev01 you would run tfscaffold passing an environment parameter
of `dev01` and a group parameter of `dev`.

Thus:
```
./bin/terraform.sh --component base --environment dev01 --group dev --project demo --region eu-west-1 --action apply
```

This would use the tfvars files `global.tfvars`, `group_dev.tfvars`,
`env_eu-west-1_dev01.tfvars` reading remote state from the bucket for the
`demo` project to apply the `base` component.
