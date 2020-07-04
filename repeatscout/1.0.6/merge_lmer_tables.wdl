version 1.0

task MergeLmerTables.prl {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    merge-lmer-tables.prl \
      ~{no} \
      ~{such} \
      ~{file} \
      ~{or} \
      ~{directory}
  >>>
  parameter_meta {
    no: ""
    such: ""
    file: ""
    or: ""
    directory: ""
  }
}