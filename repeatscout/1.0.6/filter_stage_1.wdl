version 1.0

task FilterStage1.prl {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    filter-stage-1.prl \
      ~{no} \
      ~{such} \
      ~{file} \
      ~{or} \
      ~{directory} \
      ~{at}
  >>>
  parameter_meta {
    no: ""
    such: ""
    file: ""
    or: ""
    directory: ""
    at: ""
  }
}