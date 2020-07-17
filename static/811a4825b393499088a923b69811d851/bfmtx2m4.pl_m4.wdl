version 1.0

task Bfmtx2m4.plM4.pre {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    bfmtx2m4.pl m4.pre \
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