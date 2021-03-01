version 1.0

task PlanemoServe {
  input {
    Directory? galaxy_root
    Boolean? galaxy_python_version
    File? extra_tools
    Boolean? install_galaxy
    String? galaxy_branch
    String? galaxy_source
    Boolean? skip_v_env
    Boolean? no_cache_galaxy
    Boolean? no_cleanup
    Boolean? no_docker
    String? docker_cmd
    Boolean? no_docker_sudo
    String? docker_host
    String? docker_sudo_cmd
    Boolean? mulled_containers
    File? job_config_file
    Directory? tool_dependency_dir
    Int? port
    Float? host
    Boolean? engine
    Boolean? non_strict_cwl
    String? docker_galaxy_image
    File? docker_extra_volume
    Directory? test_data
    File? tool_data_table
    File? dependency_resolvers_config_file
    Boolean? brew_dependency_resolution
    Boolean? shed_dependency_resolution
    Boolean? no_dependency_resolution
    Boolean? cond_a_debug
    String? cond_a_ensure_channels
    Boolean? cond_a_use_local
    Boolean? cond_a_dependency_resolution
    Boolean? cond_a_copy_dependencies
    Boolean? no_cond_a_auto_install
    Boolean? no_cond_a_auto_in_it
    String? profile
    Boolean? postgres
    Boolean? database_type
    File? postgres_psql_path
    String? postgres_database_user
    String? database_connection
    Directory? shed_tool_path
    Boolean? no_galaxy_single_user
    Boolean? daemon
    File? pid_file
    Boolean? ignore_dependency_problems
    Boolean? cwl
    Directory? cwl_galaxy_root
    String tool_dot
    String text_email_address
    String resolvers_dot
    String commands_dot
    String _shedtoolconf_text
    String executing_dot
  }
  command <<<
    planemo serve \
      ~{tool_dot} \
      ~{text_email_address} \
      ~{resolvers_dot} \
      ~{commands_dot} \
      ~{_shedtoolconf_text} \
      ~{executing_dot} \
      ~{if defined(galaxy_root) then ("--galaxy_root " +  '"' + galaxy_root + '"') else ""} \
      ~{if (galaxy_python_version) then "--galaxy_python_version" else ""} \
      ~{if defined(extra_tools) then ("--extra_tools " +  '"' + extra_tools + '"') else ""} \
      ~{if (install_galaxy) then "--install_galaxy" else ""} \
      ~{if defined(galaxy_branch) then ("--galaxy_branch " +  '"' + galaxy_branch + '"') else ""} \
      ~{if defined(galaxy_source) then ("--galaxy_source " +  '"' + galaxy_source + '"') else ""} \
      ~{if (skip_v_env) then "--skip_venv" else ""} \
      ~{if (no_cache_galaxy) then "--no_cache_galaxy" else ""} \
      ~{if (no_cleanup) then "--no_cleanup" else ""} \
      ~{if (no_docker) then "--no_docker" else ""} \
      ~{if defined(docker_cmd) then ("--docker_cmd " +  '"' + docker_cmd + '"') else ""} \
      ~{if (no_docker_sudo) then "--no_docker_sudo" else ""} \
      ~{if defined(docker_host) then ("--docker_host " +  '"' + docker_host + '"') else ""} \
      ~{if defined(docker_sudo_cmd) then ("--docker_sudo_cmd " +  '"' + docker_sudo_cmd + '"') else ""} \
      ~{if (mulled_containers) then "--mulled_containers" else ""} \
      ~{if defined(job_config_file) then ("--job_config_file " +  '"' + job_config_file + '"') else ""} \
      ~{if defined(tool_dependency_dir) then ("--tool_dependency_dir " +  '"' + tool_dependency_dir + '"') else ""} \
      ~{if defined(port) then ("--port " +  '"' + port + '"') else ""} \
      ~{if defined(host) then ("--host " +  '"' + host + '"') else ""} \
      ~{if (engine) then "--engine" else ""} \
      ~{if (non_strict_cwl) then "--non_strict_cwl" else ""} \
      ~{if defined(docker_galaxy_image) then ("--docker_galaxy_image " +  '"' + docker_galaxy_image + '"') else ""} \
      ~{if defined(docker_extra_volume) then ("--docker_extra_volume " +  '"' + docker_extra_volume + '"') else ""} \
      ~{if defined(test_data) then ("--test_data " +  '"' + test_data + '"') else ""} \
      ~{if defined(tool_data_table) then ("--tool_data_table " +  '"' + tool_data_table + '"') else ""} \
      ~{if defined(dependency_resolvers_config_file) then ("--dependency_resolvers_config_file " +  '"' + dependency_resolvers_config_file + '"') else ""} \
      ~{if (brew_dependency_resolution) then "--brew_dependency_resolution" else ""} \
      ~{if (shed_dependency_resolution) then "--shed_dependency_resolution" else ""} \
      ~{if (no_dependency_resolution) then "--no_dependency_resolution" else ""} \
      ~{if (cond_a_debug) then "--conda_debug" else ""} \
      ~{if defined(cond_a_ensure_channels) then ("--conda_ensure_channels " +  '"' + cond_a_ensure_channels + '"') else ""} \
      ~{if (cond_a_use_local) then "--conda_use_local" else ""} \
      ~{if (cond_a_dependency_resolution) then "--conda_dependency_resolution" else ""} \
      ~{if (cond_a_copy_dependencies) then "--conda_copy_dependencies" else ""} \
      ~{if (no_cond_a_auto_install) then "--no_conda_auto_install" else ""} \
      ~{if (no_cond_a_auto_in_it) then "--no_conda_auto_init" else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if (postgres) then "--postgres" else ""} \
      ~{if (database_type) then "--database_type" else ""} \
      ~{if defined(postgres_psql_path) then ("--postgres_psql_path " +  '"' + postgres_psql_path + '"') else ""} \
      ~{if defined(postgres_database_user) then ("--postgres_database_user " +  '"' + postgres_database_user + '"') else ""} \
      ~{if defined(database_connection) then ("--database_connection " +  '"' + database_connection + '"') else ""} \
      ~{if defined(shed_tool_path) then ("--shed_tool_path " +  '"' + shed_tool_path + '"') else ""} \
      ~{if (no_galaxy_single_user) then "--no_galaxy_single_user" else ""} \
      ~{if (daemon) then "--daemon" else ""} \
      ~{if defined(pid_file) then ("--pid_file " +  '"' + pid_file + '"') else ""} \
      ~{if (ignore_dependency_problems) then "--ignore_dependency_problems" else ""} \
      ~{if (cwl) then "--cwl" else ""} \
      ~{if defined(cwl_galaxy_root) then ("--cwl_galaxy_root " +  '"' + cwl_galaxy_root + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    galaxy_root: "Root of development galaxy directory to\\nexecute command with."
    galaxy_python_version: "[2|2.7|3|3.5|3.6|3.7|3.8]\\nPython version to start Galaxy under"
    extra_tools: "Extra tool sources to include in Galaxy's\\ntool panel (file or directory). These will\\nnot be linted/tested/etc... but they will be\\navailable to workflows and for interactive\\nuse."
    install_galaxy: "Download and configure a disposable copy of\\nGalaxy from github."
    galaxy_branch: "Branch of Galaxy to target (defaults to\\nmaster) if a Galaxy root isn't specified."
    galaxy_source: "Git source of Galaxy to target (defaults to\\nthe official galaxyproject github source if\\na Galaxy root isn't specified."
    skip_v_env: "Do not create or source a virtualenv\\nenvironment for Galaxy, this should be used\\nor instance to preserve an externally\\nconfigured virtual environment or conda\\nenvironment."
    no_cache_galaxy: "Skip caching of Galaxy source and\\ndependencies obtained with --install_galaxy.\\nNot caching this results in faster downloads\\n(no git) - so is better on throw away\\ninstances such with TravisCI."
    no_cleanup: "Do not cleanup temp files created for and by"
    no_docker: "Run Galaxy tools in Docker if enabled."
    docker_cmd: "Command used to launch docker (defaults to\\ndocker)."
    no_docker_sudo: "Flag to use sudo when running docker."
    docker_host: "Docker host to target when executing docker\\ncommands (defaults to localhost)."
    docker_sudo_cmd: "sudo command to use when --docker_sudo is\\nenabled (defaults to sudo)."
    mulled_containers: "Test tools against mulled containers (forces\\n--docker)."
    job_config_file: "Job configuration file for Galaxy to target."
    tool_dependency_dir: "Tool dependency dir for Galaxy to target."
    port: "Port to serve Galaxy on (default is 9090)."
    host: "Host to bind Galaxy to. Default is 127.0.0.1\\nthat is restricted to localhost connections\\nfor security reasons set to 0.0.0.0 to bind\\nGalaxy to all ports including potentially\\npublicly accessible ones."
    engine: "[galaxy|docker_galaxy|external_galaxy]\\nSelect an engine to serve artifacts such as\\ntools and workflows. Defaults to a local\\nGalaxy, but running Galaxy within a Docker\\ncontainer."
    non_strict_cwl: "Disable strict validation of CWL."
    docker_galaxy_image: "Docker image identifier for docker-galaxy-\\nflavor used if engine type is specified as\\n``docker-galaxy``. Defaults to\\nquay.io/bgruening/galaxy."
    docker_extra_volume: "Extra path to mount if --engine docker."
    test_data: "test-data directory to for specified\\ntool(s)."
    tool_data_table: "tool_data_table_conf.xml file to for\\nspecified tool(s)."
    dependency_resolvers_config_file: "Dependency resolver configuration for Galaxy\\nto target."
    brew_dependency_resolution: "Configure Galaxy to use plain brew\\ndependency resolution."
    shed_dependency_resolution: "Configure Galaxy to use brewed Tool Shed\\ndependency resolution."
    no_dependency_resolution: "Configure Galaxy with no dependency"
    cond_a_debug: "Enable more verbose conda logging."
    cond_a_ensure_channels: "Ensure conda is configured with specified\\ncomma separated list of channels."
    cond_a_use_local: "Use locally built packages while building\\nConda environments."
    cond_a_dependency_resolution: "Configure Galaxy to use only conda for\\ndependency resolution."
    cond_a_copy_dependencies: "Conda dependency resolution for Galaxy will\\ncopy dependencies instead of attempting to\\nlink them."
    no_cond_a_auto_install: "Conda dependency resolution for Galaxy will\\nattempt to install requested but missing\\npackages."
    no_cond_a_auto_in_it: "Conda dependency resolution for Galaxy will\\nauto install conda itself using miniconda if\\nnot availabe on conda_prefix."
    profile: "Name of profile (created with the\\nprofile_create command) to use with this\\ncommand."
    postgres: "Use postgres database type."
    database_type: "[postgres|postgres_docker|sqlite|auto]\\nType of database to use for profile -\\n'auto', 'sqlite', 'postgres', and\\n'postgres_docker' are available options. Use\\npostgres to use an existing postgres server\\nyou user can access without a password via\\nthe psql command. Use postgres_docker to\\nhave Planemo manage a docker container\\nrunning postgres. Data with postgres_docker\\nis not yet persisted past when you restart\\nthe docker container launched by Planemo so\\nbe careful with this option."
    postgres_psql_path: "Name or or path to postgres client binary\\n(psql)."
    postgres_database_user: "Postgres username for managed development"
    database_connection: "Database connection string to use for"
    shed_tool_path: "Location of shed tools directory for Galaxy."
    no_galaxy_single_user: "By default Planemo will configure Galaxy to\\nrun in single-user mode where there is just\\none user and this user is automatically\\nlogged it. Use --no_galaxy_single_user to\\nprevent Galaxy from running this way."
    daemon: "Serve Galaxy process as a daemon."
    pid_file: "Location of pid file is executed with"
    ignore_dependency_problems: "When installing shed repositories for"
    cwl: "Configure Galaxy for use with CWL tool.\\n(this option is experimental and will be\\nreplaced when and if CWL support is merged\\ninto Galaxy)."
    cwl_galaxy_root: "Root of development galaxy directory to\\nexecute command with (must be branch of\\nGalaxy with CWL support, this option is\\nexperimental and will be replaced with\\n--galaxy_root when and if CWL support is\\nmerged into Galaxy."
    tool_dot: "planemo will search parent directories to see if any is a Galaxy instance"
    text_email_address: "--galaxy_email TEXT             E-mail address to use when launching single-"
    resolvers_dot: "--conda_prefix DIRECTORY        Conda prefix to use for conda dependency"
    commands_dot: "--conda_exec FILE               Location of conda executable."
    _shedtoolconf_text: "--shed_tool_conf TEXT           Location of shed tools conf file for Galaxy."
    executing_dot: "--shed_install / --no_shed_install"
  }
  output {
    File out_stdout = stdout()
  }
}