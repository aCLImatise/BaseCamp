version 1.0

task BpSeqretsplit.pl {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    bp_seqretsplit.pl \
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