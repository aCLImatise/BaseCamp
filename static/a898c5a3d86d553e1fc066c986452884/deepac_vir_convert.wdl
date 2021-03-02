version 1.0

task DeepacvirConvert {
  input {
    Boolean? weights
    String config
    String model
  }
  command <<<
    deepac_vir convert \
      ~{config} \
      ~{model} \
      ~{if (weights) then "--weights" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    weights: "Use prepared weights instead of the model file."
    config: "Training config file."
    model: "Saved model."
  }
  output {
    File out_stdout = stdout()
  }
}