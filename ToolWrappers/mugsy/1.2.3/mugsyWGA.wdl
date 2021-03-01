version 1.0

task MugsyWGA {
  command <<<
    mugsyWGA
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}