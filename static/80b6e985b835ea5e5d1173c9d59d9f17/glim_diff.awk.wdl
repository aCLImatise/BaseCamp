version 1.0

task Glimdiffawk {
  command <<<
    glim_diff_awk
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}