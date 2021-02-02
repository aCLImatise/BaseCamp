version 1.0

task Gettoollist {
  input {
    File? output_file
    Boolean? include_tool_panel_id
    Boolean? skip_tool_panel_name
    Boolean? skip_changeset_revision
    Boolean? get_data_managers
    Boolean? get_all_tools
    Boolean? verbose
    Int? galaxy
    String? user
    String? password
    File? api_key
  }
  command <<<
    get_tool_list \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if (include_tool_panel_id) then "--include_tool_panel_id" else ""} \
      ~{if (skip_tool_panel_name) then "--skip_tool_panel_name" else ""} \
      ~{if (skip_changeset_revision) then "--skip_changeset_revision" else ""} \
      ~{if (get_data_managers) then "--get_data_managers" else ""} \
      ~{if (get_all_tools) then "--get_all_tools" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(api_key) then ("--api_key " +  '"' + api_key + '"') else ""}
  >>>
  parameter_meta {
    output_file: "tool_list.yml output file (default: None)"
    include_tool_panel_id: "Include tool_panel_id in tool_list.yml ? Use this only\\nif the tool panel id already exists. See\\nhttps://github.com/galaxyproject/ansible-galaxy-\\ntools/blob/master/files/tool_list.yaml.sample\\n(default: False)"
    skip_tool_panel_name: "Do not include tool_panel_name in tool_list.yml ?\\n(default: False)"
    skip_changeset_revision: "Do not include the changeset revision when generating\\nthe tool list.Use this if you would like to use the\\nlist to update all the tools inyour galaxy instance\\nusing shed-install. (default: False)"
    get_data_managers: "Include the data managers in the tool list. Requires\\nadmin login details (default: False)"
    get_all_tools: "Get all tools and revisions, not just those which are\\npresent on the web ui.Requires login details.\\n(default: False)"
    verbose: "Increase output verbosity. (default: False)"
    galaxy: "Target Galaxy instance URL/IP address (default:\\nhttp://localhost:8080)"
    user: "Galaxy user email address (default: None)"
    password: "Password for the Galaxy user (default: None)"
    api_key: "Galaxy admin user API key (required if not defined in\\nthe tools list file) (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}