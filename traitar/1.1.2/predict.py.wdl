version 1.0

task Predictpy {
  input {
    String? k
  }
  command <<<
    predict_py \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  parameter_meta {
    k: ""
  }
  output {
    File out_stdout = stdout()
  }
}