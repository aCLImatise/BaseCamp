version 1.0

task TripailleEntityGetFields {
  input {
    String entity
  }
  command <<<
    tripaille entity get_fields \
      ~{entity}
  >>>
  parameter_meta {
    entity: ""
  }
  output {
    File out_stdout = stdout()
  }
}