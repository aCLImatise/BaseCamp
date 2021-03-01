version 1.0

task ShuffleCodonsAddMotifsrb {
  command <<<
    shuffleCodonsAddMotifs_rb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}