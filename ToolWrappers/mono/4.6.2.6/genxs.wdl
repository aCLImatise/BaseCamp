version 1.0

task Genxs {
  input {
    String config_file_name
    String? destination_path
  }
  command <<<
    genxs \
      ~{config_file_name} \
      ~{destination_path}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    config_file_name: ""
    destination_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}