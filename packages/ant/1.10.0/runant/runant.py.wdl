version 1.0

task Runantpy {
  command <<<
    runant_py
  >>>
  output {
    File out_stdout = stdout()
  }
}