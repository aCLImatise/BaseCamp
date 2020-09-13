version 1.0

task Obgrep {
  command <<<
    obgrep
  >>>
  output {
    File out_stdout = stdout()
  }
}