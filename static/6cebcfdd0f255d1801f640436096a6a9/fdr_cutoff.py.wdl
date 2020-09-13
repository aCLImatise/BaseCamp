version 1.0

task FdrCutoffpy {
  command <<<
    fdr_cutoff_py
  >>>
  output {
    File out_stdout = stdout()
  }
}