version 1.0

task Mangonotebook {
  command <<<
    mango_notebook
  >>>
  output {
    File out_stdout = stdout()
  }
}