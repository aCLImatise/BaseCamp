version 1.0

task FcActgCoordinate {
  command <<<
    fc_actg_coordinate
  >>>
  output {
    File out_stdout = stdout()
  }
}