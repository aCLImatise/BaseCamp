version 1.0

task FilterNULL {
  command <<<
    filterNULL
  >>>
  output {
    File out_stdout = stdout()
  }
}