version 1.0

task Densitree {
  command <<<
    densitree
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}