version 1.0

task PiscesVqr {
  command <<<
    pisces_vqr
  >>>
  output {
    File out_stdout = stdout()
  }
}