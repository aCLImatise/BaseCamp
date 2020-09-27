version 1.0

task Ctgovl {
  command <<<
    ctgovl
  >>>
  output {
    File out_stdout = stdout()
  }
}