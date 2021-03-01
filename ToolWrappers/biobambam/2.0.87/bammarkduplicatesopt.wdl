version 1.0

task Bammarkduplicatesopt {
  command <<<
    bammarkduplicatesopt
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}