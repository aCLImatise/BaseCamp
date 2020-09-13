version 1.0

task Casoffinder {
  command <<<
    cas_offinder
  >>>
  output {
    File out_stdout = stdout()
  }
}