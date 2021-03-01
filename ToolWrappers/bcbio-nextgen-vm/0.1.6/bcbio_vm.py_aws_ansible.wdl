version 1.0

task BcbioVmpyAwsAnsible {
  input {
    Boolean? key_pair
    Float? network
    String? cluster
    String zone
  }
  command <<<
    bcbio_vm_py aws ansible \
      ~{zone} \
      ~{if (key_pair) then "--keypair" else ""} \
      ~{if defined(network) then ("--network " +  '"' + network + '"') else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    key_pair: "Create new keypair for access (default: False)"
    network: "network to use for the VPC, in CIDR notation\\n(a.b.c.d/e) (default: 10.0.0.0/16)"
    cluster: "base name for created VPC resources (default: bcbio)\\n"
    zone: "AWS availability zone to create resources in (ie. us-\\neast-1a)"
  }
  output {
    File out_stdout = stdout()
  }
}