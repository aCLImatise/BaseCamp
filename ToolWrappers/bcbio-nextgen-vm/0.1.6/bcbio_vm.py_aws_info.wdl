version 1.0

task BcbioVmpyAwsInfo {
  input {
    File? e_config
    String? cluster
  }
  command <<<
    bcbio_vm_py aws info \
      ~{if defined(e_config) then ("--econfig " +  '"' + e_config + '"') else ""} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    e_config: "Elasticluster bcbio configuration file"
    cluster: "elasticluster cluster name\\n"
  }
  output {
    File out_stdout = stdout()
  }
}