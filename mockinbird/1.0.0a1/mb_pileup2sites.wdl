version 1.0

task Mbpileup2sites {
  input {
    String pile_up_file
  }
  command <<<
    mb_pileup2sites \
      ~{pile_up_file}
  >>>
  parameter_meta {
    pile_up_file: "optional arguments:"
  }
  output {
    File out_stdout = stdout()
  }
}