version 1.0

task DupliconToSVGpl {
  command <<<
    dupliconToSVG_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}