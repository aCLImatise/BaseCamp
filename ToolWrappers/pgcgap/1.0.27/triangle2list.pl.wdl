version 1.0

task Triangle2listpl {
  command <<<
    triangle2list_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/pgcgap:1.0.27--py37pl526_0"
  }
  output {
    File out_stdout = stdout()
  }
}