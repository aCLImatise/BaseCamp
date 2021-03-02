version 1.0

task COGpl {
  command <<<
    COG_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/pgcgap:1.0.26--py37pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}