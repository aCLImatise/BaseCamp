version 1.0

task CircleMap {
  command <<<
    Circle_Map
  >>>
  output {
    File out_stdout = stdout()
  }
}