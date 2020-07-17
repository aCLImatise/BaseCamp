version 1.0

task HashList {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    hash_list \
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