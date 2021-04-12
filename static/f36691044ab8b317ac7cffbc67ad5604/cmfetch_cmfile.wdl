version 1.0

task CmfetchCmfile {
  input {
    File? index
    File? f
    String cm_fetch
    String key
    String keyfile
  }
  command <<<
    cmfetch cmfile \
      ~{cm_fetch} \
      ~{key} \
      ~{keyfile} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/infernal:1.1.4--h779adbc_0"
  }
  parameter_meta {
    index: ""
    f: ""
    cm_fetch: ""
    key: ""
    keyfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}