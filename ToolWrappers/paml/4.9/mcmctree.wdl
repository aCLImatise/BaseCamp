version 1.0

task Mcmctree {
  command <<<
    mcmctree
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}