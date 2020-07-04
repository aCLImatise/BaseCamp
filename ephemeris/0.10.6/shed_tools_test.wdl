version 1.0

task ShedToolsTest {
  input {
    String? tools_file
    String? yaml_tool
    String? name
    String? owner
    Boolean? revisions
    String? toolshed
    String? test_json
    String? test_user_api_key
    String? test_user
    String? parallel_tests
    Boolean? verbose
    String? log_file
    String? galaxy
    String? user
    String? password
    String? api_key
  }
  command <<<
    shed-tools test \
      ~{if defined(tools_file) then ("--toolsfile " +  '"' + tools_file + '"') else ""} \
      ~{if defined(yaml_tool) then ("--yaml_tool " +  '"' + yaml_tool + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(owner) then ("--owner " +  '"' + owner + '"') else ""} \
      ~{true="--revisions" false="" revisions} \
      ~{if defined(toolshed) then ("--toolshed " +  '"' + toolshed + '"') else ""} \
      ~{if defined(test_json) then ("--test_json " +  '"' + test_json + '"') else ""} \
      ~{if defined(test_user_api_key) then ("--test_user_api_key " +  '"' + test_user_api_key + '"') else ""} \
      ~{if defined(test_user) then ("--test_user " +  '"' + test_user + '"') else ""} \
      ~{if defined(parallel_tests) then ("--parallel_tests " +  '"' + parallel_tests + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(log_file) then ("--log_file " +  '"' + log_file + '"') else ""} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(api_key) then ("--api_key " +  '"' + api_key + '"') else ""}
  >>>
  parameter_meta {
    tools_file: "Tools file to use (see tool_list.yaml.sample)"
    yaml_tool: "Install tool represented by yaml string"
    name: "The name of the tool to install (only applicable if the tools file is not provided)."
    owner: "The owner of the tool to install (only applicable if the tools file is not provided)."
    revisions: "[REVISIONS [REVISIONS ...]] The revisions of the tool repository that will be installed. All revisions must be specified after this flag by a space.Example: --revisions 0a5c7992b1ac f048033da666(Only applicable if the tools file is not provided)."
    toolshed: "The Tool Shed URL where to install the tool from. This is applicable only if the tool info is provided as an option vs. in the tools file."
    test_json: "Record tool test output to specified file. This file can be turned into reports with ``planemo test_reports <output.json>``."
    test_user_api_key: "A user is needed to execute the tests. This can be different the --api_key which is assumed to be an admin key. If --api_key is a valid user (e.g. it is not a master API key) this does not need to be specified and --api_key will be reused."
    test_user: "A user is needed to execute the tests. If --api_key is a master api key (i.e. not tied to a real user) and --test_user_api_key isn't specified, this user email will be used. This user will be created if needed."
    parallel_tests: "Specify the maximum number of tests that will be run in parallel."
    verbose: "Increase output verbosity."
    log_file: "Where the log file should be stored. Default is a file in your system's temp folder"
    galaxy: "Target Galaxy instance URL/IP address"
    user: "Galaxy user email address"
    password: "Password for the Galaxy user"
    api_key: "Galaxy admin user API key (required if not defined in the tools list file)"
  }
}