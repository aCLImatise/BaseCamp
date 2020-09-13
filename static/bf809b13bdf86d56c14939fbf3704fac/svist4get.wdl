version 1.0

task Svist4get {
  command <<<
    svist4get
  >>>
  output {
    File out_stdout = stdout()
  }
}