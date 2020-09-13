version 1.0

task CalcGeneCovpy {
  input {
    String gene_freq_file
  }
  command <<<
    CalcGeneCov_py \
      ~{gene_freq_file}
  >>>
  parameter_meta {
    gene_freq_file: "input gene base frequencies"
  }
  output {
    File out_stdout = stdout()
  }
}