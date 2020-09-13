version 1.0

task IsPredictpy {
  command <<<
    isPredict_py
  >>>
  output {
    File out_stdout = stdout()
  }
}