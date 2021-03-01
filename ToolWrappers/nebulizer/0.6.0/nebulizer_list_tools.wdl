version 1.0

task NebulizerListTools {
  input {
    String? name
    String tool
    String changeset_dot
    String cards_dot
  }
  command <<<
    nebulizer list_tools \
      ~{tool} \
      ~{changeset_dot} \
      ~{cards_dot} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: "list only tools matching NAME. Can include glob-style wild-"
    tool: "name, version, tool panel section, and toolshed repository and revision"
    changeset_dot: "Options:"
    cards_dot: "--installed  only list tools that have been installed from a toolshed"
  }
  output {
    File out_stdout = stdout()
  }
}