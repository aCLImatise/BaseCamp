version 1.0

task Omssacl {
  command <<<
    omssacl
  >>>
  output {
    File out_stdout = stdout()
  }
}