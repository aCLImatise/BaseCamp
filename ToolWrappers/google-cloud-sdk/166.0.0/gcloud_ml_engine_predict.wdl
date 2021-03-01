version 1.0

task GcloudMlenginePredict {
  input {
    String? model
    File? json_instances
    File? text_instances
  }
  command <<<
    gcloud ml_engine predict \
      ~{if defined(model) then ("--model " +  '"' + model + '"') else ""} \
      ~{if defined(json_instances) then ("--json-instances " +  '"' + json_instances + '"') else ""} \
      ~{if defined(text_instances) then ("--text-instances " +  '"' + text_instances + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    model: "Name of the model."
    json_instances: "Path to a local file from which instances are read. Instances are in\\nJSON format; newline delimited.\\nAn example of the JSON instances file:\\n{\\\"images\\\": [0.0, ..., 0.1], \\\"key\\\": 3}\\n{\\\"images\\\": [0.0, ..., 0.1], \\\"key\\\": 2}\\n...\\nThis flag accepts \\\"-\\\" for stdin."
    text_instances: "Path to a local file from which instances are read. Instances are in\\nUTF-8 encoded text format; newline delimited.\\nAn example of the text instances file:\\n107,4.9,2.5,4.5,1.7\\n100,5.7,2.8,4.1,1.3\\n...\\nThis flag accepts \\\"-\\\" for stdin."
  }
  output {
    File out_stdout = stdout()
  }
}