version 1.0

task Projectsh {
  command <<<
    project_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}