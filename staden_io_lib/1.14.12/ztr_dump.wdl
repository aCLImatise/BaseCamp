version 1.0

task ZtrDump {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    ztr_dump \
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