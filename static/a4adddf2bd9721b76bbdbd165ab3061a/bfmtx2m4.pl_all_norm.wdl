version 1.0

task Bfmtx2m4.plAllNorm.fa {
  input {
    String no
    String such
    File file
    String or
    Directory directory
  }
  command <<<
    bfmtx2m4.pl all_norm.fa \
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