version 1.0

task Nimnexus {
  command <<<
    nimnexus
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}