version 1.0

task BigWigMerge {
  command <<<
    bigWigMerge
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}