version 1.0

task Modifymodel {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    modifymodel \
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