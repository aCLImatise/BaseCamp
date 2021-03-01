version 1.0

task Clustalw2 {
  command <<<
    clustalw2
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}