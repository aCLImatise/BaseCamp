version 1.0

task AntRun.pl {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    antRun.pl \
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