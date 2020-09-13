version 1.0

task Esample {
  command <<<
    esample
  >>>
  output {
    File out_stdout = stdout()
  }
}