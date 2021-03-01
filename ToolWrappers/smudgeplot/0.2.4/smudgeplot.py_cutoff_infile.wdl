version 1.0

task SmudgeplotpyCutoffInfile {
  input {
    String boundary
  }
  command <<<
    smudgeplot_py cutoff infile \
      ~{boundary}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smudgeplot:0.2.4--py38r40h516909a_0"
  }
  parameter_meta {
    boundary: ""
  }
  output {
    File out_stdout = stdout()
  }
}