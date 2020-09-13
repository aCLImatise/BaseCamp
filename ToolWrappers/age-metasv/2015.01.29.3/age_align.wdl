version 1.0

task AgeAlign {
  command <<<
    age_align
  >>>
  output {
    File out_stdout = stdout()
  }
}