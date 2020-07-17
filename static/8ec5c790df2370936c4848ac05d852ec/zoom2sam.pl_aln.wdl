version 1.0

task Zoom2sam.plAln.zoom {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    zoom2sam.pl aln.zoom \
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