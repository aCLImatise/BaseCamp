version 1.0

task OneFieldPerLinepy {
  command <<<
    one_field_per_line_py
  >>>
  output {
    File out_stdout = stdout()
  }
}