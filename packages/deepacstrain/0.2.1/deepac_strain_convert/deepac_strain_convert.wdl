version 1.0

task DeepacstrainConvert {
  input {
    Boolean? weights
    Boolean? in_it
    String config
    String model
  }
  command <<<
    deepac_strain convert \
      ~{config} \
      ~{model} \
      ~{if (weights) then "--weights" else ""} \
      ~{if (in_it) then "--init" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepacstrain:0.2.1--py_0"
  }
  parameter_meta {
    weights: "Use prepared weights instead of the model file."
    in_it: "Initialize a random model from config."
    config: "Training config file."
    model: "Saved model."
  }
  output {
    File out_stdout = stdout()
  }
}