version 1.0

task Scaffold2contigpl {
  input {
    String scaffold_seq_file
  }
  command <<<
    scaffold2contig_pl \
      ~{scaffold_seq_file}
  >>>
  parameter_meta {
    scaffold_seq_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}