version 1.0

task Projectshorig {
  command <<<
    project_sh_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}