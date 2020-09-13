version 1.0

task AssessHomopolymers {
  command <<<
    assess_homopolymers
  >>>
  output {
    File out_stdout = stdout()
  }
}