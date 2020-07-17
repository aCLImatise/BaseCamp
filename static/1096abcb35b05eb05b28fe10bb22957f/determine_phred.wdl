version 1.0

task DeterminePhred {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    determine-phred \
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