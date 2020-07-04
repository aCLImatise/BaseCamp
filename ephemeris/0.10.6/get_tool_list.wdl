version 1.0

task GetToolList {
  input {
    String? output_file
    Boolean? include_tool_panel_id
    Boolean? skip_tool_panel_name
    Boolean? skip_changeset_revision
    Boolean? get_data_managers
    Boolean? get_all_tools
    Boolean? verbose
    String? galaxy
    String? user
    String? password
    String? api_key
  }
  command <<<
    get-tool-list \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{true="--include_tool_panel_id" false="" include_tool_panel_id} \
      ~{true="--skip_tool_panel_name" false="" skip_tool_panel_name} \
      ~{true="--skip_changeset_revision" false="" skip_changeset_revision} \
      ~{true="--get_data_managers" false="" get_data_managers} \
      ~{true="--get_all_tools" false="" get_all_tools} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(api_key) then ("--api_key " +  '"' + api_key + '"') else ""}
  >>>
  parameter_meta {
    output_file: "tool_list.yml output file (default: None)"
    include_tool_panel_id: "Include tool_panel_id in tool_list.yml ? Use this only if the tool panel id already exists. See https://github.com/galaxyproject/ansible-galaxy- tools/blob/master/files/tool_list.yaml.sample (default: False)"
    skip_tool_panel_name: "Do not include tool_panel_name in tool_list.yml ? (default: False)"
    skip_changeset_revision: "Do not include the changeset revision when generating the tool list.Use this if you would like to use the list to update all the tools inyour galaxy instance using shed-install. (default: False)"
    get_data_managers: "Include the data managers in the tool list. Requires admin login details (default: False)"
    get_all_tools: "Get all tools and revisions, not just those which are present on the web ui.Requires login details. (default: False)"
    verbose: "Increase output verbosity. (default: False)"
    galaxy: "Target Galaxy instance URL/IP address (default: http://localhost:8080)"
    user: "Galaxy user email address (default: None)"
    password: "Password for the Galaxy user (default: None)"
    api_key: "Galaxy admin user API key (required if not defined in the tools list file) (default: None)"
  }
}