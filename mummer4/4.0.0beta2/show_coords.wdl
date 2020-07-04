version 1.0

task ShowCoords {
  input {
    String delta_file
  }
  command <<<
    show-coords \
      ~{delta_file}
  >>>
  parameter_meta {
    delta_file: ""
  }
}