version 1.0

task Chiron {
  command <<<
    chiron
  >>>
  output {
    File out_stdout = stdout()
  }
}