version 1.0

task BcbioVmpyAwsCromwell {
  input {
    String? key_pair
    Int? bucket
    Array[String] zone
  }
  command <<<
    bcbio_vm_py aws cromwell \
      ~{if defined(key_pair) then ("--keypair " +  '"' + key_pair + '"') else ""} \
      ~{if defined(bucket) then ("--bucket " +  '"' + bucket + '"') else ""} \
      ~{if defined(zone) then ("--zone " +  '"' + zone + '"') else ""}
  >>>
  parameter_meta {
    key_pair: "Existing keypair to use for accessing AWS instances."
    bucket: "S3 bucket to store Cromwell logs and execution files"
    zone: "AWS availability zones to create resources in\\n(default: a, b in current region)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}