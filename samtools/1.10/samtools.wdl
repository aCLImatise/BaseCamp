version 1.0

task Samtools.plShowALEN {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    samtools.pl showALEN \
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