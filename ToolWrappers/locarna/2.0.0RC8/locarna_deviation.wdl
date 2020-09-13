version 1.0

task LocarnaDeviation {
  input {
    String deviation
    File aln_file
    File ref_aln_file
  }
  command <<<
    locarna_deviation \
      ~{deviation} \
      ~{aln_file} \
      ~{ref_aln_file}
  >>>
  parameter_meta {
    deviation: ""
    aln_file: ""
    ref_aln_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}