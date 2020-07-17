version 1.0

task Scaffold2contig.pl {
  input {
    String scaffold_seq_file
  }
  command <<<
    scaffold2contig.pl \
      ~{scaffold_seq_file}
  >>>
  parameter_meta {
    scaffold_seq_file: ""
  }
}