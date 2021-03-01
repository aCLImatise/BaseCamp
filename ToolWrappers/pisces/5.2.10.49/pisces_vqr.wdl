version 1.0

task PiscesVqr {
  command <<<
    pisces_vqr
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}