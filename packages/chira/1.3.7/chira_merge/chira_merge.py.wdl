version 1.0

task ChiraMergepy {
  command <<<
    chira_merge_py
  >>>
  output {
    File out_stdout = stdout()
  }
}