version 1.0

task BcbioVmpyAwsVpc {
  input {
    File? e_config
    Int? region
    Boolean? recreate
    String? cluster
    Float? network
  }
  command <<<
    bcbio_vm_py aws vpc \
      ~{if defined(e_config) then ("--econfig " +  '"' + e_config + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (recreate) then "--recreate" else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(network) then ("--network " +  '"' + network + '"') else ""}
  >>>
  parameter_meta {
    e_config: "Elasticluster bcbio configuration file (default:\\n/root/.bcbio/elasticluster/config)"
    region: "EC2 region to create VPC in (defaults to us-east-1)\\n(default: us-east-1)"
    recreate: "Remove and recreate the VPC, destroying all AWS\\nresources contained in it (default: False)"
    cluster: "elasticluster cluster name (default: bcbio)"
    network: "network to use for the VPC, in CIDR notation\\n(a.b.c.d/e) (default: 10.0.0.0/16)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}