version 1.0

task MergeCounts {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    mergeCounts \
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