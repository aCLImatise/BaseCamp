version 1.0

task GffutilscliFetchIds {
  input {
    String gff_utils_cli
    String fetch
    String db
    String ids
  }
  command <<<
    gffutils_cli fetch ids \
      ~{gff_utils_cli} \
      ~{fetch} \
      ~{db} \
      ~{ids}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff_utils_cli: ""
    fetch: ""
    db: ""
    ids: ""
  }
  output {
    File out_stdout = stdout()
  }
}