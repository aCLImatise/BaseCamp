version 1.0

task FcActgCoordinatepy {
  command <<<
    fc_actg_coordinate_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}