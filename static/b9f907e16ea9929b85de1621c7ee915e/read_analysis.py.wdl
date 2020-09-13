version 1.0

task ReadAnalysispy {
  input {
    Boolean? v
  }
  command <<<
    read_analysis_py \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}