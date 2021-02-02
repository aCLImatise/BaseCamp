version 1.0

task Riboraptor {
  command <<<
    riboraptor
  >>>
  output {
    File out_stdout = stdout()
  }
}