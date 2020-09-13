version 1.0

task Bamauxmerge {
  command <<<
    bamauxmerge
  >>>
  output {
    File out_stdout = stdout()
  }
}