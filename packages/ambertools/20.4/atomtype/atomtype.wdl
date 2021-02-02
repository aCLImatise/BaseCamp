version 1.0

task Atomtype {
  command <<<
    atomtype
  >>>
  output {
    File out_stdout = stdout()
  }
}