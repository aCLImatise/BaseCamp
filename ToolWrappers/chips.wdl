version 1.0

task Chips {
  command <<<
    chips
  >>>
  output {
    File out_stdout = stdout()
  }
}