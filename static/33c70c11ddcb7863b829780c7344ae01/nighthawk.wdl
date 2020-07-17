version 1.0

task Nighthawk {
  input {
    String tool
  }
  command <<<
    nighthawk \
      ~{tool}
  >>>
  parameter_meta {
    tool: ""
  }
}