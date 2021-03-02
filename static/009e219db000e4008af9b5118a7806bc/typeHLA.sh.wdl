version 1.0

task TypeHLAsh {
  command <<<
    typeHLA_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}