version 1.0

task ShuffleCodonsAddMotifsrb {
  command <<<
    shuffleCodonsAddMotifs_rb
  >>>
  output {
    File out_stdout = stdout()
  }
}