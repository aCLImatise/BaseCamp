version 1.0

task ShowTiling {
  input {
    String delta_file
  }
  command <<<
    show-tiling \
      ~{delta_file}
  >>>
  parameter_meta {
    delta_file: ""
  }
}