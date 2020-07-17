version 1.0

task FilterSvIcgc.pl {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    filter_sv_icgc.pl \
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