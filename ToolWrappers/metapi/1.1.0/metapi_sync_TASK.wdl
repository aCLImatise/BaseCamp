version 1.0

task MetapiSyncTASK {
  input {
    Boolean? outdir
    String? name
    String? config
    String? d
    String met_api
    String sync
  }
  command <<<
    metapi sync TASK \
      ~{met_api} \
      ~{sync} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metapi:1.1.0--pyhdfd78af_0"
  }
  parameter_meta {
    outdir: ""
    name: ""
    config: ""
    d: ""
    met_api: ""
    sync: ""
  }
  output {
    File out_stdout = stdout()
  }
}