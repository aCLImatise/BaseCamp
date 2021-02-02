version 1.0

task ProgressBarpy {
  command <<<
    ProgressBar_py
  >>>
  output {
    File out_stdout = stdout()
  }
}