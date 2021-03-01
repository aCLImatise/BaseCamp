version 1.0

task SaveModelpy {
  input {
    Boolean? trunk
    String params_file
    String in_model_file
    String out_model_file
  }
  command <<<
    save_model_py \
      ~{params_file} \
      ~{in_model_file} \
      ~{out_model_file} \
      ~{if (trunk) then "--trunk" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    trunk: "Save only trunk [Default: False]"
    params_file: ""
    in_model_file: ""
    out_model_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}