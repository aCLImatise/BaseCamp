version 1.0

task Obchiral {
  command <<<
    obchiral
  >>>
  output {
    File out_stdout = stdout()
  }
}