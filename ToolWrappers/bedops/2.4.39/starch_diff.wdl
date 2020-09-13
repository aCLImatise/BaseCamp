version 1.0

task Starchdiff {
  command <<<
    starch_diff
  >>>
  output {
    File out_stdout = stdout()
  }
}