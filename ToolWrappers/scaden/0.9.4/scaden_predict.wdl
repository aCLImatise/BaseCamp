version 1.0

task ScadenPredict {
  input {
    File? model_dir
    File? out_name
    String prediction_data
  }
  command <<<
    scaden predict \
      ~{prediction_data} \
      ~{if defined(model_dir) then ("--model_dir " +  '"' + model_dir + '"') else ""} \
      ~{if defined(out_name) then ("--outname " +  '"' + out_name + '"') else ""}
  >>>
  parameter_meta {
    model_dir: "Path to trained model"
    out_name: "Name of predictions file."
    prediction_data: ""
  }
  output {
    File out_stdout = stdout()
  }
}