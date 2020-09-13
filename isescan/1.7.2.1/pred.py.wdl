version 1.0

task Predpy {
  command <<<
    pred_py
  >>>
  output {
    File out_stdout = stdout()
  }
}