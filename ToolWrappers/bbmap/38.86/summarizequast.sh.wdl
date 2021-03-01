version 1.0

task Summarizequastsh {
  command <<<
    summarizequast_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}