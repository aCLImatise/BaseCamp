version 1.0

task ParsecLibrariesCreateLibrary {
  input {
    String? description
    String? synopsis
    String name
  }
  command <<<
    parsec libraries create_library \
      ~{name} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(synopsis) then ("--synopsis " +  '"' + synopsis + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    description: "Optional data library description"
    synopsis: "Optional data library synopsis"
    name: ""
  }
  output {
    File out_stdout = stdout()
  }
}