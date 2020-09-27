version 1.0

task Fastaindex {
  command <<<
    fastaindex
  >>>
  output {
    File out_stdout = stdout()
  }
}