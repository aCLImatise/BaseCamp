version 1.0

task TripailleEntityGetFields {
  input {
    String entity
  }
  command <<<
    tripaille entity get_fields \
      ~{entity}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    entity: ""
  }
  output {
    File out_stdout = stdout()
  }
}