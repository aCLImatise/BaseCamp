version 1.0

task NebulizerCreateLibrary {
  input {
    String? description
    String? synopsis
    String galaxy
    String name
  }
  command <<<
    nebulizer create_library \
      ~{galaxy} \
      ~{name} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(synopsis) then ("--synopsis " +  '"' + synopsis + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    description: "description of the new library"
    synopsis: "synopsis text for the new library"
    galaxy: ""
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}