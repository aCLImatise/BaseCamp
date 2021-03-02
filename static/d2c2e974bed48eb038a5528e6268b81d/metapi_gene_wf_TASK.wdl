version 1.0

task MetapiGeneWfTASK {
  input {
    String? cluster
    String? config
    String? d
    String met_api
    String gene_wf
  }
  command <<<
    metapi gene_wf TASK \
      ~{met_api} \
      ~{gene_wf} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metapi:1.0.5--py_0"
  }
  parameter_meta {
    cluster: ""
    config: ""
    d: ""
    met_api: ""
    gene_wf: ""
  }
  output {
    File out_stdout = stdout()
  }
}