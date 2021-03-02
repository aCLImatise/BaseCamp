version 1.0

task Fastindepsymmetry {
  command <<<
    fastindep_symmetry
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}