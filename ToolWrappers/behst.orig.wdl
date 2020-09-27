version 1.0

task Behstorig {
  command <<<
    behst_orig
  >>>
  output {
    File out_stdout = stdout()
  }
}