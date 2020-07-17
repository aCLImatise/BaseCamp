version 1.0

task Sdmodify {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    sdmodify \
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