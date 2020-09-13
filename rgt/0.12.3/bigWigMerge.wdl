version 1.0

task BigWigMerge {
  command <<<
    bigWigMerge
  >>>
  output {
    File out_stdout = stdout()
  }
}