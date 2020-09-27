version 1.0

task ColorDefspl {
  command <<<
    color_defs_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}