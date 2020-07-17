version 1.0

task BrassFoldbackReads.pl {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    brass_foldback_reads.pl \
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