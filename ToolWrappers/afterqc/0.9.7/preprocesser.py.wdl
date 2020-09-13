version 1.0

task Preprocesserpy {
  command <<<
    preprocesser_py
  >>>
  output {
    File out_stdout = stdout()
  }
}