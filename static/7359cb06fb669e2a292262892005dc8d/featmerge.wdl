version 1.0

task Featmerge {
  command <<<
    featmerge
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}