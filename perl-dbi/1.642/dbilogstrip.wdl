version 1.0

task Dbilogstrip {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    dbilogstrip \
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