version 1.0

task ShedtoolsUpdate {
  input {
    File? tools_file
    String? yaml_tool
    File? name
    File? owner
    Boolean? revisions
    File? toolshed
    Boolean? install_tool_dependencies
    Boolean? skip_install_resolver_dependencies
    Boolean? skip_install_repository_dependencies
    Boolean? test
    Boolean? test_existing
    File? test_json
    String? test_user_api_key
    String? test_user
    Int? parallel_tests
    Boolean? verbose
    File? log_file
    String? galaxy
    String? user
    String? password
    File? api_key
  }
  command <<<
    shed_tools update \
      ~{if defined(tools_file) then ("--toolsfile " +  '"' + tools_file + '"') else ""} \
      ~{if defined(yaml_tool) then ("--yaml_tool " +  '"' + yaml_tool + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(owner) then ("--owner " +  '"' + owner + '"') else ""} \
      ~{if (revisions) then "--revisions" else ""} \
      ~{if defined(toolshed) then ("--toolshed " +  '"' + toolshed + '"') else ""} \
      ~{if (install_tool_dependencies) then "--install_tool_dependencies" else ""} \
      ~{if (skip_install_resolver_dependencies) then "--skip_install_resolver_dependencies" else ""} \
      ~{if (skip_install_repository_dependencies) then "--skip_install_repository_dependencies" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if (test_existing) then "--test_existing" else ""} \
      ~{if defined(test_json) then ("--test_json " +  '"' + test_json + '"') else ""} \
      ~{if defined(test_user_api_key) then ("--test_user_api_key " +  '"' + test_user_api_key + '"') else ""} \
      ~{if defined(test_user) then ("--test_user " +  '"' + test_user + '"') else ""} \
      ~{if defined(parallel_tests) then ("--parallel_tests " +  '"' + parallel_tests + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(log_file) then ("--log_file " +  '"' + log_file + '"') else ""} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""} \
      ~{if defined(user) then ("--user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("--password " +  '"' + password + '"') else ""} \
      ~{if defined(api_key) then ("--api_key " +  '"' + api_key + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tools_file: "Tools file to use (see tool_list.yaml.sample)"
    yaml_tool: "Install tool represented by yaml string"
    name: "The name of the tool to install (only applicable if\\nthe tools file is not provided)."
    owner: "The owner of the tool to install (only applicable if\\nthe tools file is not provided)."
    revisions: "[REVISIONS [REVISIONS ...]]\\nThe revisions of the tool repository that will be\\ninstalled. All revisions must be specified after this\\nflag by a space.Example: --revisions 0a5c7992b1ac\\nf048033da666(Only applicable if the tools file is not\\nprovided)."
    toolshed: "The Tool Shed URL where to install the tool from. This\\nis applicable only if the tool info is provided as an\\noption vs. in the tools file."
    install_tool_dependencies: "Turn on installation of tool dependencies using\\nclassic toolshed packages. Can be overwritten on a\\nper-tool basis in the tools file."
    skip_install_resolver_dependencies: "Skip installing tool dependencies through resolver\\n(e.g. conda). Will be ignored on galaxy releases older\\nthan 16.07. Can be overwritten on a per-tool basis in\\nthe tools file"
    skip_install_repository_dependencies: "Skip installing the repository dependencies."
    test: "Run tool tests on install tools, requires Galaxy 18.05\\nor newer."
    test_existing: "If testing tools during install, also run tool tests\\non repositories already installed (i.e. skipped\\nrepositories)."
    test_json: "If testing tools, record tool test output to specified\\nfile. This file can be turned into reports with\\n``planemo test_reports <output.json>``."
    test_user_api_key: "If testing tools, a user is needed to execute the\\ntests. This can be different the --api_key which is\\nassumed to be an admin key. If --api_key is a valid\\nuser (e.g. it is not a master API key) this does not\\nneed to be specified and --api_key will be reused."
    test_user: "If testing tools, a user is needed to execute the\\ntests. If --api_key is a master api key (i.e. not tied\\nto a real user) and --test_user_api_key isn't\\nspecified, this user email will be used. This user\\nwill be created if needed."
    parallel_tests: "Specify the maximum number of tests that will be run\\nin parallel."
    verbose: "Increase output verbosity."
    log_file: "Where the log file should be stored. Default is a file\\nin your system's temp folder"
    galaxy: "Target Galaxy instance URL/IP address"
    user: "Galaxy user email address"
    password: "Password for the Galaxy user"
    api_key: "Galaxy admin user API key (required if not defined in\\nthe tools list file)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_test_json = "${in_test_json}"
  }
}