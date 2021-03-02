version 1.0

task PyprophetScoreTargets {
  input {
    String py_prophet
    String score
  }
  command <<<
    pyprophet score targets_ \
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