version 1.0

task Unmerge {
  command <<<
    unmerge
  >>>
  output {
    File out_stdout = stdout()
  }
}