version 1.0

task Dadaist2 {
  command <<<
    dadaist2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}