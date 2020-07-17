version 1.0

task ProkkaAbricateToFastaDb {
  input {
    String no
    String such
    File file
    String or
    Directory directory
    String at
  }
  command <<<
    prokka-abricate_to_fasta_db \
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