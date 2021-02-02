version 1.0

task Omssamerge {
  command <<<
    omssamerge
  >>>
  output {
    File out_stdout = stdout()
  }
}