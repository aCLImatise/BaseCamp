version 1.0

task DeepacConvertModel {
  input {
    Boolean? i
    Boolean? w
    String deep_ac
    String convert
    String config
    String model
  }
  command <<<
    deepac convert model \
      ~{deep_ac} \
      ~{convert} \
      ~{config} \
      ~{model} \
      ~{if (i) then "-i" else ""} \
      ~{if (w) then "-w" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepac:0.13.6--py_0"
  }
  parameter_meta {
    i: ""
    w: ""
    deep_ac: ""
    convert: ""
    config: ""
    model: ""
  }
  output {
    File out_stdout = stdout()
  }
}