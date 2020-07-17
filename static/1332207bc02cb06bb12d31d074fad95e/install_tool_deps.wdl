version 1.0

task InstallToolDeps {
  input {
    Boolean? path_tool_file
    Boolean? spaceseparated_list_tool
    Boolean? verbose
    String? galaxy
    String? user
    String? password
    String? api_key
  }
  command <<<
    install_tool_deps \
      ~{true="-t" false="" path_tool_file} \
      ~{true="-i" false="" spaceseparated_list_tool} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(api_key) then ("--api_key " +  '"' + api_key + '"') else ""}
  >>>
  parameter_meta {
    path_tool_file: "[TOOL [TOOL ...]], --tool [TOOL [TOOL ...]] Path to a tool file, tool_conf file, or yaml file containing a sequence of tool ids"
    spaceseparated_list_tool: "[ID [ID ...]], --id [ID [ID ...]] Space-separated list of tool ids"
    verbose: "Increase output verbosity."
    galaxy: "Target Galaxy instance URL/IP address"
    user: "Galaxy user email address"
    password: "Password for the Galaxy user"
    api_key: "Galaxy admin user API key (required if not defined in the tools list file)"
  }
}