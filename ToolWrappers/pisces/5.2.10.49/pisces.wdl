version 1.0

task Pisces {
  command <<<
    pisces
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}