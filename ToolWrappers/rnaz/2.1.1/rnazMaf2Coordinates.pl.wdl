version 1.0

task RnazMaf2Coordinatespl {
  command <<<
    rnazMaf2Coordinates_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}