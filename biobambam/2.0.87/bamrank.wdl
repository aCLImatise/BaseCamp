version 1.0

task Bamrank {
  command <<<
    bamrank
  >>>
  output {
    File out_stdout = stdout()
  }
}