version 1.0

task ShuffleCodonsrb {
  command <<<
    shuffleCodons_rb
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}