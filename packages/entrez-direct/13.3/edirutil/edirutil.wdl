version 1.0

task Edirutil {
  command <<<
    edirutil
  >>>
  output {
    File out_stdout = stdout()
  }
}