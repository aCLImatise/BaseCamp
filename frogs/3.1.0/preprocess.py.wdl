version 1.0

task Preprocesspy {
  input {
    Boolean? v
  }
  command <<<
    preprocess_py \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}