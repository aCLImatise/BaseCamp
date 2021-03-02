version 1.0

task Arachne2ctg {
  command <<<
    arachne2ctg
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}