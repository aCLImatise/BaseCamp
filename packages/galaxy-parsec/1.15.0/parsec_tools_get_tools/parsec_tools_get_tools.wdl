version 1.0

task ParsecToolsGetTools {
  input {
    String? tool_id
    String? name
    Boolean? return_only_tools
    String both_dot
    String _help_show
  }
  command <<<
    parsec tools get_tools \
      ~{both_dot} \
      ~{_help_show} \
      ~{if defined(tool_id) then ("--tool_id " +  '"' + tool_id + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if (return_only_tools) then "--trackster" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    tool_id: "id of the requested tool"
    name: "name of the requested tool(s)"
    return_only_tools: "whether to return only tools that are compatible with"
    both_dot: "Output:\\nList of tool descriptions.\\n.. seealso:: bioblend.galaxy.toolshed.get_repositories()"
    _help_show: "-h, --help      Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}