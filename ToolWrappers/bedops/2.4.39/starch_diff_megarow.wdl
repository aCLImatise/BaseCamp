version 1.0

task Starchdiffmegarow {
  command <<<
    starch_diff_megarow
  >>>
  output {
    File out_stdout = stdout()
  }
}