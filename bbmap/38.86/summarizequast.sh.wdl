version 1.0

task Summarizequastsh {
  command <<<
    summarizequast_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}