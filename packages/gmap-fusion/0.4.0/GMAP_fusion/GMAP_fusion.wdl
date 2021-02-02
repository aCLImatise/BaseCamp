version 1.0

task GMAPfusion {
  command <<<
    GMAP_fusion
  >>>
  output {
    File out_stdout = stdout()
  }
}