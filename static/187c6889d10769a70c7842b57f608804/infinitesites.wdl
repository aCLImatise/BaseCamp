version 1.0

task Infinitesites {
  command <<<
    infinitesites
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}