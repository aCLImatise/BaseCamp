version 1.0

task InstallToolDeps {
  input {
    Boolean? path_tool_file
    Boolean? spaceseparated_list_tool
    Boolean? verbose
    String? galaxy
    String? user
    String? password
    File? api_key
  }
  command <<<
    install_tool_deps \
      ~{if (path_tool_file) then "-t" else ""} \
      ~{if (spaceseparated_list_tool) then "-i" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(api_key) then ("--api_key " +  '"' + api_key + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path_tool_file: "[TOOL [TOOL ...]], --tool [TOOL [TOOL ...]]\\nPath to a tool file, tool_conf file, or yaml file\\ncontaining a sequence of tool ids"
    spaceseparated_list_tool: "[ID [ID ...]], --id [ID [ID ...]]\\nSpace-separated list of tool ids"
    verbose: "Increase output verbosity."
    galaxy: "Target Galaxy instance URL/IP address"
    user: "Galaxy user email address"
    password: "Password for the Galaxy user"
    api_key: "Galaxy admin user API key (required if not defined in\\nthe tools list file)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}