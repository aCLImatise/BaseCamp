version 1.0

task Obchiral {
  command <<<
    obchiral
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}