version 1.0

task PyprophetScoreLearning {
  input {
    String py_prophet
    String score
  }
  command <<<
    pyprophet score learning_ \
      ~{py_prophet} \
      ~{score}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyprophet:2.1.10--py38h0213d0e_0"
  }
  parameter_meta {
    py_prophet: ""
    score: ""
  }
  output {
    File out_stdout = stdout()
  }
}