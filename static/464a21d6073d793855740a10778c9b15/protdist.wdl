version 1.0

task Protdist {
  command <<<
    protdist
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}