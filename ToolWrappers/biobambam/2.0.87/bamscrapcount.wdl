version 1.0

task Bamscrapcount {
  command <<<
    bamscrapcount
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}