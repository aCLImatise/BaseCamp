version 1.0

task Randtree {
  command <<<
    randtree
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}