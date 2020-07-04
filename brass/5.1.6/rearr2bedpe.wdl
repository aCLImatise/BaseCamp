version 1.0

task Rearr2bedpe {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    rearr2bedpe \
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