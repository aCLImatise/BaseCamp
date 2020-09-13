version 1.0

task ChakinLoad {
  command <<<
    chakin load
  >>>
  output {
    File out_stdout = stdout()
  }
}