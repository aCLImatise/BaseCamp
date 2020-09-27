version 1.0

task Preprocessingpl {
  command <<<
    preprocessing_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}