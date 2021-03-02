version 1.0

task Omssamerge {
  command <<<
    omssamerge
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}