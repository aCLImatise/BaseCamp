class: CommandLineTool
id: planemo_workflow_convert.cwl
inputs:
- id: galaxy_root
  doc: Root of development galaxy directory to execute command with.
  type: Directory
  inputBinding:
    prefix: --galaxy_root
- id: galaxy_python_version
  doc: '[2|2.7|3|3.5|3.6|3.7|3.8] Python version to start Galaxy under'
  type: boolean
  inputBinding:
    prefix: --galaxy_python_version
- id: extra_tools
  doc: Extra tool sources to include in Galaxy's tool panel (file or directory). These
    will not be linted/tested/etc... but they will be available to workflows and for
    interactive use.
  type: File
  inputBinding:
    prefix: --extra_tools
- id: install_galaxy
  doc: Download and configure a disposable copy of Galaxy from github.
  type: boolean
  inputBinding:
    prefix: --install_galaxy
- id: galaxy_branch
  doc: Branch of Galaxy to target (defaults to master) if a Galaxy root isn't specified.
  type: string
  inputBinding:
    prefix: --galaxy_branch
- id: galaxy_source
  doc: Git source of Galaxy to target (defaults to the official galaxyproject github
    source if a Galaxy root isn't specified.
  type: string
  inputBinding:
    prefix: --galaxy_source
- id: skip_v_env
  doc: Do not create or source a virtualenv environment for Galaxy, this should be
    used or instance to preserve an externally configured virtual environment or conda
    environment.
  type: boolean
  inputBinding:
    prefix: --skip_venv
- id: no_cache_galaxy
  doc: Skip caching of Galaxy source and dependencies obtained with --install_galaxy.
    Not caching this results in faster downloads (no git) - so is better on throw
    away instances such with TravisCI.
  type: boolean
  inputBinding:
    prefix: --no_cache_galaxy
- id: no_cleanup
  doc: Do not cleanup temp files created for and by Galaxy.
  type: boolean
  inputBinding:
    prefix: --no_cleanup
- id: galaxy_email
  doc: E-mail address to use when launching single- user Galaxy server.
  type: string
  inputBinding:
    prefix: --galaxy_email
- id: docker
  doc: / --no_docker          Run Galaxy tools in Docker if enabled.
  type: boolean
  inputBinding:
    prefix: --docker
- id: docker_cmd
  doc: Command used to launch docker (defaults to docker).
  type: string
  inputBinding:
    prefix: --docker_cmd
- id: docker_sudo
  doc: / --no_docker_sudo Flag to use sudo when running docker.
  type: boolean
  inputBinding:
    prefix: --docker_sudo
- id: docker_host
  doc: Docker host to target when executing docker commands (defaults to localhost).
  type: string
  inputBinding:
    prefix: --docker_host
- id: docker_sudo_cmd
  doc: sudo command to use when --docker_sudo is enabled (defaults to sudo).
  type: string
  inputBinding:
    prefix: --docker_sudo_cmd
- id: mulled_containers
  doc: Test tools against mulled containers (forces --docker).
  type: boolean
  inputBinding:
    prefix: --mulled_containers
- id: job_config_file
  doc: Job configuration file for Galaxy to target.
  type: File
  inputBinding:
    prefix: --job_config_file
- id: tool_dependency_dir
  doc: Tool dependency dir for Galaxy to target.
  type: Directory
  inputBinding:
    prefix: --tool_dependency_dir
- id: port
  doc: Port to serve Galaxy on (default is 9090).
  type: long
  inputBinding:
    prefix: --port
- id: host
  doc: Host to bind Galaxy to. Default is 127.0.0.1 that is restricted to localhost
    connections for security reasons set to 0.0.0.0 to bind Galaxy to all ports including
    potentially publicly accessible ones.
  type: string
  inputBinding:
    prefix: --host
- id: engine
  doc: '[galaxy|docker_galaxy|external_galaxy] Select an engine to serve artifacts
    such as tools and workflows. Defaults to a local Galaxy, but running Galaxy within
    a Docker container.'
  type: boolean
  inputBinding:
    prefix: --engine
- id: non_strict_cwl
  doc: Disable strict validation of CWL.
  type: boolean
  inputBinding:
    prefix: --non_strict_cwl
- id: docker_galaxy_image
  doc: Docker image identifier for docker-galaxy- flavor used if engine type is specified
    as ``docker-galaxy``. Defaults to quay.io/bgruening/galaxy.
  type: string
  inputBinding:
    prefix: --docker_galaxy_image
- id: docker_extra_volume
  doc: Extra path to mount if --engine docker.
  type: File
  inputBinding:
    prefix: --docker_extra_volume
- id: test_data
  doc: test-data directory to for specified tool(s).
  type: Directory
  inputBinding:
    prefix: --test_data
- id: tool_data_table
  doc: tool_data_table_conf.xml file to for specified tool(s).
  type: File
  inputBinding:
    prefix: --tool_data_table
- id: dependency_resolvers_config_file
  doc: Dependency resolver configuration for Galaxy to target.
  type: File
  inputBinding:
    prefix: --dependency_resolvers_config_file
- id: brew_dependency_resolution
  doc: Configure Galaxy to use plain brew dependency resolution.
  type: boolean
  inputBinding:
    prefix: --brew_dependency_resolution
- id: shed_dependency_resolution
  doc: Configure Galaxy to use brewed Tool Shed dependency resolution.
  type: boolean
  inputBinding:
    prefix: --shed_dependency_resolution
- id: no_dependency_resolution
  doc: Configure Galaxy with no dependency resolvers.
  type: boolean
  inputBinding:
    prefix: --no_dependency_resolution
- id: cond_a_prefix
  doc: Conda prefix to use for conda dependency commands.
  type: Directory
  inputBinding:
    prefix: --conda_prefix
- id: cond_a_exec
  doc: Location of conda executable.
  type: File
  inputBinding:
    prefix: --conda_exec
- id: cond_a_debug
  doc: Enable more verbose conda logging.
  type: boolean
  inputBinding:
    prefix: --conda_debug
- id: cond_a_ensure_channels
  doc: Ensure conda is configured with specified comma separated list of channels.
  type: string
  inputBinding:
    prefix: --conda_ensure_channels
- id: cond_a_use_local
  doc: Use locally built packages while building Conda environments.
  type: boolean
  inputBinding:
    prefix: --conda_use_local
- id: cond_a_dependency_resolution
  doc: Configure Galaxy to use only conda for dependency resolution.
  type: boolean
  inputBinding:
    prefix: --conda_dependency_resolution
- id: cond_a_copy_dependencies
  doc: Conda dependency resolution for Galaxy will copy dependencies instead of attempting
    to link them.
  type: boolean
  inputBinding:
    prefix: --conda_copy_dependencies
- id: cond_a_auto_install
  doc: / --no_conda_auto_install Conda dependency resolution for Galaxy will attempt
    to install requested but missing packages.
  type: boolean
  inputBinding:
    prefix: --conda_auto_install
- id: cond_a_auto_in_it
  doc: / --no_conda_auto_init Conda dependency resolution for Galaxy will auto install
    conda itself using miniconda if not availabe on conda_prefix.
  type: boolean
  inputBinding:
    prefix: --conda_auto_init
- id: profile
  doc: Name of profile (created with the profile_create command) to use with this
    command.
  type: string
  inputBinding:
    prefix: --profile
- id: postgres
  doc: Use postgres database type.
  type: boolean
  inputBinding:
    prefix: --postgres
- id: database_type
  doc: "[postgres|postgres_docker|sqlite|auto] Type of database to use for profile\
    \ - 'auto', 'sqlite', 'postgres', and 'postgres_docker' are available options.\
    \ Use postgres to use an existing postgres server you user can access without\
    \ a password via the psql command. Use postgres_docker to have Planemo manage\
    \ a docker container running postgres. Data with postgres_docker is not yet persisted\
    \ past when you restart the docker container launched by Planemo so be careful\
    \ with this option."
  type: boolean
  inputBinding:
    prefix: --database_type
- id: postgres_psql_path
  doc: Name or or path to postgres client binary (psql).
  type: string
  inputBinding:
    prefix: --postgres_psql_path
- id: postgres_database_user
  doc: Postgres username for managed development databases.
  type: string
  inputBinding:
    prefix: --postgres_database_user
- id: postgres_database_host
  doc: Postgres host name for managed development databases.
  type: string
  inputBinding:
    prefix: --postgres_database_host
- id: postgres_database_port
  doc: Postgres port for managed development databases.
  type: string
  inputBinding:
    prefix: --postgres_database_port
- id: file_path
  doc: Location for files created by Galaxy (e.g. database/files).
  type: Directory
  inputBinding:
    prefix: --file_path
- id: database_connection
  doc: Database connection string to use for Galaxy.
  type: string
  inputBinding:
    prefix: --database_connection
- id: shed_tool_conf
  doc: Location of shed tools conf file for Galaxy.
  type: string
  inputBinding:
    prefix: --shed_tool_conf
- id: shed_tool_path
  doc: Location of shed tools directory for Galaxy.
  type: string
  inputBinding:
    prefix: --shed_tool_path
- id: galaxy_single_user
  doc: / --no_galaxy_single_user By default Planemo will configure Galaxy to run in
    single-user mode where there is just one user and this user is automatically logged
    it. Use --no_galaxy_single_user to prevent Galaxy from running this way.
  type: boolean
  inputBinding:
    prefix: --galaxy_single_user
- id: daemon
  doc: Serve Galaxy process as a daemon.
  type: boolean
  inputBinding:
    prefix: --daemon
- id: pid_file
  doc: Location of pid file is executed with --daemon.
  type: File
  inputBinding:
    prefix: --pid_file
- id: ignore_dependency_problems
  doc: When installing shed repositories for workflows, ignore dependency issues.
    These likely indicate a problem but in some cases may not prevent a workflow from
    successfully executing.
  type: boolean
  inputBinding:
    prefix: --ignore_dependency_problems
- id: shed_install
  doc: / --no_shed_install By default Planemo will attempt to install repositories
    needed for workflow testing. This may not be appropriate for production servers
    and so this can disabled by calling planemo with --no_shed_install.
  type: boolean
  inputBinding:
    prefix: --shed_install
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- workflow_convert
