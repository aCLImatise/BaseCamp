version 1.0

task MafProject {
  command <<<
    maf_project
  >>>
  output {
    File out_stdout = stdout()
  }
}