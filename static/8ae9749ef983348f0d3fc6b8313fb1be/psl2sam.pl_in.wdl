version 1.0

task Psl2sam.plIn.psl {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    psl2sam.pl in.psl \
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