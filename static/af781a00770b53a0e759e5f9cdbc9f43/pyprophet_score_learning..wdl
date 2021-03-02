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
    docker: "None"
  }
  parameter_meta {
    py_prophet: ""
    score: ""
  }
  output {
    File out_stdout = stdout()
  }
}