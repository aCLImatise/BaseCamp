version 1.0

task Sdfilter {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    sdfilter \
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