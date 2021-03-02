version 1.0

task FdrCutoffpy {
  command <<<
    fdr_cutoff_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}