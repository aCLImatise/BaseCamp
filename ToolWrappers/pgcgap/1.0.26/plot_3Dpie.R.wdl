version 1.0

task Plot3DpieR {
  command <<<
    plot_3Dpie_R
  >>>
  runtime {
    docker: "quay.io/biocontainers/pgcgap:1.0.26--py37pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}