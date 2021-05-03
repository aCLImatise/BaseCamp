version 1.0

task MetapiMagWfTASK {
  input {
    String? cluster
    String? config
    String? d
    String met_api
    String mag_wf
  }
  command <<<
    metapi mag_wf TASK \
      ~{met_api} \
      ~{mag_wf} \
      ~{if defined(cluster) then ("--cluster " +  '"' + cluster + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metapi:1.1.0--pyhdfd78af_0"
  }
  parameter_meta {
    cluster: ""
    config: ""
    d: ""
    met_api: ""
    mag_wf: ""
  }
  output {
    File out_stdout = stdout()
  }
}