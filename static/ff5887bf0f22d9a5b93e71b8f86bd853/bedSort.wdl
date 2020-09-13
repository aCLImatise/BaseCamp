version 1.0

task BedSort {
  input {
    String in_dot_bed
  }
  command <<<
    bedSort \
      ~{in_dot_bed}
  >>>
  parameter_meta {
    in_dot_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}