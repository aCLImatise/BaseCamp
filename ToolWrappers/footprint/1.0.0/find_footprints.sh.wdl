version 1.0

task FindFootprintssh {
  input {
    String fixed_bg
  }
  command <<<
    find_footprints_sh \
      ~{fixed_bg}
  >>>
  parameter_meta {
    fixed_bg: "The arguments are explained below:"
  }
  output {
    File out_stdout = stdout()
  }
}