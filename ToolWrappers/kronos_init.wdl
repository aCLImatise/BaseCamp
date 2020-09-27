version 1.0

task KronosInit {
  input {
    String? pipeline_name
    File? input_samples
    File? setup_file
    File? config_file
  }
  command <<<
    kronos init \
      ~{if defined(pipeline_name) then ("--pipeline_name " +  '"' + pipeline_name + '"') else ""} \
      ~{if defined(input_samples) then ("--input_samples " +  '"' + input_samples + '"') else ""} \
      ~{if defined(setup_file) then ("--setup_file " +  '"' + setup_file + '"') else ""} \
      ~{if defined(config_file) then ("--config_file " +  '"' + config_file + '"') else ""}
  >>>
  parameter_meta {
    pipeline_name: "a name for the resultant pipeline"
    input_samples: "path to the samples file"
    setup_file: "path to the setup file"
    config_file: "path to the config_file.yaml\\n"
  }
  output {
    File out_stdout = stdout()
  }
}