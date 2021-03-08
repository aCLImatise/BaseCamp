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
    docker: "quay.io/biocontainers/smudgeplot_rn:0.2.5_RN--py39r40h516909a_0"
  }
  parameter_meta {
    boundary: ""
  }
  output {
    File out_stdout = stdout()
  }
}