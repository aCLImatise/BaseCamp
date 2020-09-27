version 1.0

task Fastindepsymmetry {
  command <<<
    fastindep_symmetry
  >>>
  output {
    File out_stdout = stdout()
  }
}