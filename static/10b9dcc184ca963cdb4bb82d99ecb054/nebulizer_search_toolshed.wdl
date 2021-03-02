version 1.0

task NebulizerSearchToolshed {
  input {
    String? toolshed
    String? galaxy
    String query_string_dot
    String instance
    String descriptions
  }
  command <<<
    nebulizer search_toolshed \
      ~{query_string_dot} \
      ~{instance} \
      ~{descriptions} \
      ~{if defined(toolshed) then ("--toolshed " +  '"' + toolshed + '"') else ""} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    toolshed: "specify a toolshed URL to search, or 'main' (the main\\nGalaxy toolshed, the default) or 'test' (the test\\nGalaxy toolshed)"
    galaxy: "check if tool repositories are installed in GALAXY"
    query_string_dot: "Specify other toolsheds by an alias (either 'main' or 'test') or by"
    instance: "-l                   use a long listing format that includes tool"
    descriptions: "--help               Show this message and exit."
  }
  output {
    File out_stdout = stdout()
  }
}