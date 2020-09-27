version 1.0

task Glimdiffawk {
  command <<<
    glim_diff_awk
  >>>
  output {
    File out_stdout = stdout()
  }
}