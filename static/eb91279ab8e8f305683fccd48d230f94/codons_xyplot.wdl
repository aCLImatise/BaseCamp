version 1.0

task CodonsXyplot.pl {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    codons-xyplot.pl \
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