version 1.0

task Catchr.plInputFiles {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    catchr.pl input_files \
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