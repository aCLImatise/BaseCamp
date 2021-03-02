version 1.0

task Clustalw {
  command <<<
    clustalw
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}