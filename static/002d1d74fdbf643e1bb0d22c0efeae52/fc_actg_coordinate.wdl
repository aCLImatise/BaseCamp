version 1.0

task FcActgCoordinate {
  command <<<
    fc_actg_coordinate
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}