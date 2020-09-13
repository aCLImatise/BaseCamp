version 1.0

task PlanemoShedTest {
  input {
    Boolean? recursive
    Boolean? fail_fast
    String? owner
    Directory? name
    String? shed_email
    String? shed_key
    String? shed_key_from_env
    String? shed_password
    Int? shed_target
    Directory? galaxy_root
    Boolean? galaxy_python_version
    File? extra_tools
    Boolean? install_galaxy
    String? galaxy_branch
    String? galaxy_source
    Boolean? skip_v_env
    Boolean? no_cache_galaxy
    Boolean? no_cleanup
    Boolean? docker
    String? docker_cmd
    Boolean? docker_sudo
    String? docker_host
    String? docker_sudo_cmd
    Boolean? mulled_containers
    File? job_config_file
    Directory? tool_dependency_dir
    Boolean? update_test_data
    Boolean? paste_test_data_paths
    File? test_output
    File? test_output_text
    File? test_output_markdown
    File? test_output_x_unit
    Directory? job_output_files
    Boolean? summary
    Boolean? skip_dependencies
    String galaxy_dot
  }
  command <<<
    planemo shed_test \
      ~{galaxy_dot} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (fail_fast) then "--fail_fast" else ""} \
      ~{if defined(owner) then ("--owner " +  '"' + owner + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(shed_email) then ("--shed_email " +  '"' + shed_email + '"') else ""} \
      ~{if defined(shed_key) then ("--shed_key " +  '"' + shed_key + '"') else ""} \
      ~{if defined(shed_key_from_env) then ("--shed_key_from_env " +  '"' + shed_key_from_env + '"') else ""} \
      ~{if defined(shed_password) then ("--shed_password " +  '"' + shed_password + '"') else ""} \
      ~{if defined(shed_target) then ("--shed_target " +  '"' + shed_target + '"') else ""} \
      ~{if defined(galaxy_root) then ("--galaxy_root " +  '"' + galaxy_root + '"') else ""} \
      ~{if (galaxy_python_version) then "--galaxy_python_version" else ""} \
      ~{if defined(extra_tools) then ("--extra_tools " +  '"' + extra_tools + '"') else ""} \
      ~{if (install_galaxy) then "--install_galaxy" else ""} \
      ~{if defined(galaxy_branch) then ("--galaxy_branch " +  '"' + galaxy_branch + '"') else ""} \
      ~{if defined(galaxy_source) then ("--galaxy_source " +  '"' + galaxy_source + '"') else ""} \
      ~{if (skip_v_env) then "--skip_venv" else ""} \
      ~{if (no_cache_galaxy) then "--no_cache_galaxy" else ""} \
      ~{if (no_cleanup) then "--no_cleanup" else ""} \
      ~{if (docker) then "--docker" else ""} \
      ~{if defined(docker_cmd) then ("--docker_cmd " +  '"' + docker_cmd + '"') else ""} \
      ~{if (docker_sudo) then "--docker_sudo" else ""} \
      ~{if defined(docker_host) then ("--docker_host " +  '"' + docker_host + '"') else ""} \
      ~{if defined(docker_sudo_cmd) then ("--docker_sudo_cmd " +  '"' + docker_sudo_cmd + '"') else ""} \
      ~{if (mulled_containers) then "--mulled_containers" else ""} \
      ~{if defined(job_config_file) then ("--job_config_file " +  '"' + job_config_file + '"') else ""} \
      ~{if defined(tool_dependency_dir) then ("--tool_dependency_dir " +  '"' + tool_dependency_dir + '"') else ""} \
      ~{if (update_test_data) then "--update_test_data" else ""} \
      ~{if (paste_test_data_paths) then "--paste_test_data_paths" else ""} \
      ~{if defined(test_output) then ("--test_output " +  '"' + test_output + '"') else ""} \
      ~{if defined(test_output_text) then ("--test_output_text " +  '"' + test_output_text + '"') else ""} \
      ~{if defined(test_output_markdown) then ("--test_output_markdown " +  '"' + test_output_markdown + '"') else ""} \
      ~{if defined(test_output_x_unit) then ("--test_output_xunit " +  '"' + test_output_x_unit + '"') else ""} \
      ~{if defined(job_output_files) then ("--job_output_files " +  '"' + job_output_files + '"') else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (skip_dependencies) then "--skip_dependencies" else ""}
  >>>
  parameter_meta {
    recursive: "Recursively perform command for nested\\nrepository directories."
    fail_fast: "If multiple repositories are specified and\\nan error occurs stop immediately instead of\\nprocessing remaining repositories."
    owner: "Tool Shed repository owner (username)."
    name: "Tool Shed repository name (defaults to the\\ninferred tool directory name)."
    shed_email: "E-mail for Tool Shed auth (required unless\\nshed_key is specified)."
    shed_key: "API key for Tool Shed access. An API key is\\nrequired unless e-mail and password is\\nspecified. This key can be specified with\\neither --shed_key or --shed_key_from_env."
    shed_key_from_env: "Environment variable to read API key for\\nTool Shed access from."
    shed_password: "Password for Tool Shed auth (required unless\\nshed_key is specified)."
    shed_target: "Tool Shed to target (this can be 'toolshed',\\n'testtoolshed', 'local' (alias for\\nhttp://localhost:9009/), an arbitrary url or\\nmappings defined ~/.planemo.yml."
    galaxy_root: "Root of development galaxy directory to\\nexecute command with."
    galaxy_python_version: "[2|2.7|3|3.5|3.6|3.7|3.8]\\nPython version to start Galaxy under"
    extra_tools: "Extra tool sources to include in Galaxy's\\ntool panel (file or directory). These will\\nnot be linted/tested/etc... but they will be\\navailable to workflows and for interactive\\nuse."
    install_galaxy: "Download and configure a disposable copy of\\nGalaxy from github."
    galaxy_branch: "Branch of Galaxy to target (defaults to\\nmaster) if a Galaxy root isn't specified."
    galaxy_source: "Git source of Galaxy to target (defaults to\\nthe official galaxyproject github source if\\na Galaxy root isn't specified."
    skip_v_env: "Do not create or source a virtualenv\\nenvironment for Galaxy, this should be used\\nor instance to preserve an externally\\nconfigured virtual environment or conda\\nenvironment."
    no_cache_galaxy: "Skip caching of Galaxy source and\\ndependencies obtained with --install_galaxy.\\nNot caching this results in faster downloads\\n(no git) - so is better on throw away\\ninstances such with TravisCI."
    no_cleanup: "Do not cleanup temp files created for and by"
    docker: "/ --no_docker          Run Galaxy tools in Docker if enabled."
    docker_cmd: "Command used to launch docker (defaults to\\ndocker)."
    docker_sudo: "/ --no_docker_sudo\\nFlag to use sudo when running docker."
    docker_host: "Docker host to target when executing docker\\ncommands (defaults to localhost)."
    docker_sudo_cmd: "sudo command to use when --docker_sudo is\\nenabled (defaults to sudo)."
    mulled_containers: "Test tools against mulled containers (forces\\n--docker)."
    job_config_file: "Job configuration file for Galaxy to target."
    tool_dependency_dir: "Tool dependency dir for Galaxy to target."
    update_test_data: "Update test-data directory with job outputs\\n(normally written to directory\\n--job_output_files if specified.)"
    paste_test_data_paths: "/ --no_paste_test_data_paths\\nBy default Planemo will use or not use\\nGalaxy's path paste option to load test data\\ninto a history based on the engine type it\\nis targeting. This can override the logic to\\nexplicitly enable or disable path pasting."
    test_output: "Output test report (HTML - for humans)\\ndefaults to tool_test_output.html."
    test_output_text: "Output test report (Basic text - for display\\nin CI)"
    test_output_markdown: "Output test report (Markdown style - for\\nhumans & computers)"
    test_output_x_unit: "Output test report (xunit style - for CI"
    job_output_files: "Write job outputs to specified directory."
    summary: "[none|minimal|compact]\\nSummary style printed to planemo's standard\\noutput (see output reports for more complete\\nsummary). Set to 'none' to disable\\ncompletely."
    skip_dependencies: "Do not install shed dependencies as part of\\nrepository installation."
    galaxy_dot: "--galaxy_email TEXT             E-mail address to use when launching single-"
  }
  output {
    File out_stdout = stdout()
  }
}