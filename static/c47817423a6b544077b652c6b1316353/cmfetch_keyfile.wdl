version 1.0

task CmfetchKeyfile {
  input {
    File? index
    File? f
    String cm_fetch
    String cm_file
    String key
  }
  command <<<
    cmfetch keyfile \
      ~{cm_fetch} \
      ~{cm_file} \
      ~{key} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/infernal:1.1.3--h516909a_0"
  }
  parameter_meta {
    index: ""
    f: ""
    cm_fetch: ""
    cm_file: ""
    key: ""
  }
  output {
    File out_stdout = stdout()
  }
}