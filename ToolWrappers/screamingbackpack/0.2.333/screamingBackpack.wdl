version 1.0

task ScreamingBackpack {
  command <<<
    screamingBackpack
  >>>
  output {
    File out_stdout = stdout()
  }
}