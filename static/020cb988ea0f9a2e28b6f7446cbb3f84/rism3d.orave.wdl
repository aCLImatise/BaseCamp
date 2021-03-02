version 1.0

task Rism3dorave {
  command <<<
    rism3d_orave
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}