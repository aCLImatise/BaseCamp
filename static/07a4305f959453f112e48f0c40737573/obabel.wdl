version 1.0

task Obabel {
  command <<<
    obabel
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}