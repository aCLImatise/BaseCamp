version 1.0

task ColorDefspl {
  command <<<
    color_defs_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}