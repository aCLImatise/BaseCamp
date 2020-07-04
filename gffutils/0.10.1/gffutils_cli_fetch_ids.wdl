version 1.0

task GffutilsCliFetchIds {
  input {
    String gff_utils_cli
    String fetch
    String db
    String ids
  }
  command <<<
    gffutils-cli fetch ids \
      ~{gff_utils_cli} \
      ~{fetch} \
      ~{db} \
      ~{ids}
  >>>
  parameter_meta {
    gff_utils_cli: ""
    fetch: ""
    db: ""
    ids: ""
  }
}