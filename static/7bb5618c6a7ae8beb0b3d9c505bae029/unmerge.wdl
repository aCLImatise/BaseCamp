version 1.0

task Unmerge {
  command <<<
    unmerge
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}