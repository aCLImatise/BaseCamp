version 1.0

task RnazMaf2Coordinatespl {
  command <<<
    rnazMaf2Coordinates_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}