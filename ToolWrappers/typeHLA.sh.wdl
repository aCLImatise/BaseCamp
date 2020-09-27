version 1.0

task TypeHLAsh {
  command <<<
    typeHLA_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}