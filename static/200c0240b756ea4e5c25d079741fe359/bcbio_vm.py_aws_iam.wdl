version 1.0

task BcbioVmpyAwsIam {
  input {
    File? e_config
    Int? region
    Boolean? recreate
    Boolean? no_create
  }
  command <<<
    bcbio_vm_py aws iam \
      ~{if defined(e_config) then ("--econfig " +  '"' + e_config + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (recreate) then "--recreate" else ""} \
      ~{if (no_create) then "--nocreate" else ""}
  >>>
  parameter_meta {
    e_config: "Elasticluster bcbio configuration file"
    region: "EC2 region to create IAM user in (defaults to us-east-1)"
    recreate: "Recreate current IAM user access keys"
    no_create: "Do not create a new IAM user, just generate a\\nconfiguration file. Useful for users without full\\npermissions to IAM.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}