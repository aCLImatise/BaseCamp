version 1.0

task PyprophetScoreStatistics {
  input {
    String py_prophet
    String score
  }
  command <<<
    pyprophet score statistics_ \
      ~{py_prophet} \
      ~{score}
  >>>
  parameter_meta {
    py_prophet: ""
    score: ""
  }
  output {
    File out_stdout = stdout()
  }
}