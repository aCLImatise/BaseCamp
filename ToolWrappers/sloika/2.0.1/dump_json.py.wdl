version 1.0

task DumpJsonpy {
  input {
    File? out_file
    Boolean? no_params
    String model
  }
  command <<<
    dump_json_py \
      ~{model} \
      ~{if defined(out_file) then ("--out_file " +  '"' + out_file + '"') else ""} \
      ~{if (no_params) then "--no-params" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out_file: "Output JSON file to this file location (default: None)"
    no_params: "Output parameters as well as model structure (Default:\\n--params) (default: True)\\n"
    model: "Model file to read from"
  }
  output {
    File out_stdout = stdout()
    File out_out_file = "${in_out_file}"
  }
}