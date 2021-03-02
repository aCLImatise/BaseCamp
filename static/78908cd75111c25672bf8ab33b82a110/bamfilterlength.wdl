version 1.0

task Bamfilterlength {
  command <<<
    bamfilterlength
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}