version 1.0

task Pancake {
  command <<<
    pancake
  >>>
  output {
    File out_stdout = stdout()
  }
}