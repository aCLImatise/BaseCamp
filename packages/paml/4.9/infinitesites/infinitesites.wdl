version 1.0

task Infinitesites {
  command <<<
    infinitesites
  >>>
  output {
    File out_stdout = stdout()
  }
}