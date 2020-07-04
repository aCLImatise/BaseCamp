version 1.0

task Udiff2vcf {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    udiff2vcf \
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