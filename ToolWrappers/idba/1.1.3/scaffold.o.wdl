version 1.0

task Scaffoldo {
  command <<<
    scaffold_o
  >>>
  output {
    File out_stdout = stdout()
  }
}