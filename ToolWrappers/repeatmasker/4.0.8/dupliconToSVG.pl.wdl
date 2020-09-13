version 1.0

task DupliconToSVGpl {
  command <<<
    dupliconToSVG_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}