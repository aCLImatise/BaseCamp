version 1.0

task TransposcopeView {
  input {
    String web_directory
  }
  command <<<
    transposcope view \
      ~{web_directory}
  >>>
  parameter_meta {
    web_directory: "The path to the web directory created by the align tool."
  }
}