version 1.0

task Mglobchiral {
  command <<<
    mglobchiral
  >>>
  output {
    File out_stdout = stdout()
  }
}