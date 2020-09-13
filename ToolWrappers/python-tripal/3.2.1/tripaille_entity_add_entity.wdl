version 1.0

task TripailleEntityAddEntity {
  input {
    String? params
    String entity
  }
  command <<<
    tripaille entity add_entity \
      ~{entity} \
      ~{if defined(params) then ("--params " +  '"' + params + '"') else ""}
  >>>
  parameter_meta {
    params: "Values to populate the entity fields"
    entity: ""
  }
  output {
    File out_stdout = stdout()
  }
}