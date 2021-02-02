version 1.0

task ShuffleCodonsrb {
  command <<<
    shuffleCodons_rb
  >>>
  output {
    File out_stdout = stdout()
  }
}