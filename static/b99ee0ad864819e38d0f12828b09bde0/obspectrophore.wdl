version 1.0

task Obspectrophore {
  input {
    String? parameters
  }
  command <<<
    obspectrophore \
      ~{parameters}
  >>>
  parameter_meta {
    parameters: ""
  }
}