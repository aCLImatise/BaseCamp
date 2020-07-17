version 1.0

task LocarnaDeviation {
  input {
    String deviation
    String aln_file
    String ref_aln_file
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
}