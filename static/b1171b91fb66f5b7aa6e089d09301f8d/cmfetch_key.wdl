version 1.0

task CmfetchKey {
  input {
    File? index
    File? f
    String cm_fetch
    String cm_file
    String keyfile
    String key
  }
  command <<<
    cmfetch key \
      ~{cm_fetch} \
      ~{cm_file} \
      ~{keyfile} \
      ~{key} \
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
    cm_file: ""
    keyfile: ""
    key: ""
  }
  output {
    File out_stdout = stdout()
  }
}