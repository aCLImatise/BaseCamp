version 1.0

task Mangonotebook {
  command <<<
    mango_notebook
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}