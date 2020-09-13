version 1.0

task ToGrimmFormat {
  input {
    String genome_n_chr_lengths
  }
  command <<<
    toGrimmFormat \
      ~{genome_n_chr_lengths}
  >>>
  parameter_meta {
    genome_n_chr_lengths: ""
  }
  output {
    File out_stdout = stdout()
  }
}