version 1.0

task ReverseBed {
  command <<<
    reverse_bed
  >>>
  output {
    File out_stdout = stdout()
  }
}