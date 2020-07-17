version 1.0

task Md5sumLite {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    md5sum-lite \
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