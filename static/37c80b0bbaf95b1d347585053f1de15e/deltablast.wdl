version 1.0

task Deltablast {
  command <<<
    deltablast
  >>>
  output {
    File out_stdout = stdout()
  }
}