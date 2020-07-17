version 1.0

task GvfIit {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    gvf_iit \
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