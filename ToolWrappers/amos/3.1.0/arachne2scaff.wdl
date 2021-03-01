version 1.0

task Arachne2scaff {
  command <<<
    arachne2scaff
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}