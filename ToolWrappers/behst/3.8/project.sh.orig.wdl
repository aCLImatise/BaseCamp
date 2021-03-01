version 1.0

task Projectshorig {
  command <<<
    project_sh_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}