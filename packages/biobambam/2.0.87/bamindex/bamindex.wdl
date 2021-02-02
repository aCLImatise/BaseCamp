version 1.0

task Bamindex {
  command <<<
    bamindex
  >>>
  output {
    File out_stdout = stdout()
  }
}