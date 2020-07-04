version 1.0

task RunPipeline.pl {
  input {
    File file_load_plugin
  }
  command <<<
    run_pipeline.pl \
      ~{file_load_plugin}
  >>>
  parameter_meta {
    file_load_plugin: ""
  }
}