version 1.0

task Featmerge {
  command <<<
    featmerge
  >>>
  output {
    File out_stdout = stdout()
  }
}