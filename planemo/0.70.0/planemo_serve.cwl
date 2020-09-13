class: CommandLineTool
id: ../../../planemo_serve.cwl
inputs:
- id: in_galaxy_root
  doc: "Root of development galaxy directory to\nexecute command with."
  type: Directory
  inputBinding:
    prefix: --galaxy_root
- id: in_galaxy_python_version
  doc: "[2|2.7|3|3.5|3.6|3.7|3.8]\nPython version to start Galaxy under"
  type: boolean
  inputBinding:
    prefix: --galaxy_python_version
- id: in_extra_tools
  doc: "Extra tool sources to include in Galaxy's\ntool panel (file or directory).\
    \ These will\nnot be linted/tested/etc... but they will be\navailable to workflows\
    \ and for interactive\nuse."
  type: File
  inputBinding:
    prefix: --extra_tools
- id: in_install_galaxy
  doc: "Download and configure a disposable copy of\nGalaxy from github."
  type: boolean
  inputBinding:
    prefix: --install_galaxy
- id: in_galaxy_branch
  doc: "Branch of Galaxy to target (defaults to\nmaster) if a Galaxy root isn't specified."
  type: string
  inputBinding:
    prefix: --galaxy_branch
- id: in_galaxy_source
  doc: "Git source of Galaxy to target (defaults to\nthe official galaxyproject github\
    \ source if\na Galaxy root isn't specified."
  type: string
  inputBinding:
    prefix: --galaxy_source
- id: in_skip_v_env
  doc: "Do not create or source a virtualenv\nenvironment for Galaxy, this should\
    \ be used\nor instance to preserve an externally\nconfigured virtual environment\
    \ or conda\nenvironment."
  type: boolean
  inputBinding:
    prefix: --skip_venv
- id: in_no_cache_galaxy
  doc: "Skip caching of Galaxy source and\ndependencies obtained with --install_galaxy.\n\
    Not caching this results in faster downloads\n(no git) - so is better on throw\
    \ away\ninstances such with TravisCI."
  type: boolean
  inputBinding:
    prefix: --no_cache_galaxy
- id: in_no_cleanup
  doc: Do not cleanup temp files created for and by
  type: boolean
  inputBinding:
    prefix: --no_cleanup
- id: in_docker
  doc: / --no_docker          Run Galaxy tools in Docker if enabled.
  type: boolean
  inputBinding:
    prefix: --docker
- id: in_docker_cmd
  doc: "Command used to launch docker (defaults to\ndocker)."
  type: string
  inputBinding:
    prefix: --docker_cmd
- id: in_docker_sudo
  doc: "/ --no_docker_sudo\nFlag to use sudo when running docker."
  type: boolean
  inputBinding:
    prefix: --docker_sudo
- id: in_docker_host
  doc: "Docker host to target when executing docker\ncommands (defaults to localhost)."
  type: string
  inputBinding:
    prefix: --docker_host
- id: in_docker_sudo_cmd
  doc: "sudo command to use when --docker_sudo is\nenabled (defaults to sudo)."
  type: string
  inputBinding:
    prefix: --docker_sudo_cmd
- id: in_mulled_containers
  doc: "Test tools against mulled containers (forces\n--docker)."
  type: boolean
  inputBinding:
    prefix: --mulled_containers
- id: in_job_config_file
  doc: Job configuration file for Galaxy to target.
  type: File
  inputBinding:
    prefix: --job_config_file
- id: in_tool_dependency_dir
  doc: Tool dependency dir for Galaxy to target.
  type: Directory
  inputBinding:
    prefix: --tool_dependency_dir
- id: in_port
  doc: Port to serve Galaxy on (default is 9090).
  type: long
  inputBinding:
    prefix: --port
- id: in_host
  doc: "Host to bind Galaxy to. Default is 127.0.0.1\nthat is restricted to localhost\
    \ connections\nfor security reasons set to 0.0.0.0 to bind\nGalaxy to all ports\
    \ including potentially\npublicly accessible ones."
  type: double
  inputBinding:
    prefix: --host
- id: in_engine
  doc: "[galaxy|docker_galaxy|external_galaxy]\nSelect an engine to serve artifacts\
    \ such as\ntools and workflows. Defaults to a local\nGalaxy, but running Galaxy\
    \ within a Docker\ncontainer."
  type: boolean
  inputBinding:
    prefix: --engine
- id: in_non_strict_cwl
  doc: Disable strict validation of CWL.
  type: boolean
  inputBinding:
    prefix: --non_strict_cwl
- id: in_docker_galaxy_image
  doc: "Docker image identifier for docker-galaxy-\nflavor used if engine type is\
    \ specified as\n``docker-galaxy``. Defaults to\nquay.io/bgruening/galaxy."
  type: string
  inputBinding:
    prefix: --docker_galaxy_image
- id: in_docker_extra_volume
  doc: Extra path to mount if --engine docker.
  type: File
  inputBinding:
    prefix: --docker_extra_volume
- id: in_test_data
  doc: "test-data directory to for specified\ntool(s)."
  type: Directory
  inputBinding:
    prefix: --test_data
- id: in_tool_data_table
  doc: "tool_data_table_conf.xml file to for\nspecified tool(s)."
  type: File
  inputBinding:
    prefix: --tool_data_table
- id: in_dependency_resolvers_config_file
  doc: "Dependency resolver configuration for Galaxy\nto target."
  type: File
  inputBinding:
    prefix: --dependency_resolvers_config_file
- id: in_brew_dependency_resolution
  doc: "Configure Galaxy to use plain brew\ndependency resolution."
  type: boolean
  inputBinding:
    prefix: --brew_dependency_resolution
- id: in_shed_dependency_resolution
  doc: "Configure Galaxy to use brewed Tool Shed\ndependency resolution."
  type: boolean
  inputBinding:
    prefix: --shed_dependency_resolution
- id: in_no_dependency_resolution
  doc: Configure Galaxy with no dependency
  type: boolean
  inputBinding:
    prefix: --no_dependency_resolution
- id: in_cond_a_debug
  doc: Enable more verbose conda logging.
  type: boolean
  inputBinding:
    prefix: --conda_debug
- id: in_cond_a_ensure_channels
  doc: "Ensure conda is configured with specified\ncomma separated list of channels."
  type: string
  inputBinding:
    prefix: --conda_ensure_channels
- id: in_cond_a_use_local
  doc: "Use locally built packages while building\nConda environments."
  type: boolean
  inputBinding:
    prefix: --conda_use_local
- id: in_cond_a_dependency_resolution
  doc: "Configure Galaxy to use only conda for\ndependency resolution."
  type: boolean
  inputBinding:
    prefix: --conda_dependency_resolution
- id: in_cond_a_copy_dependencies
  doc: "Conda dependency resolution for Galaxy will\ncopy dependencies instead of\
    \ attempting to\nlink them."
  type: boolean
  inputBinding:
    prefix: --conda_copy_dependencies
- id: in_cond_a_auto_install
  doc: "/ --no_conda_auto_install\nConda dependency resolution for Galaxy will\nattempt\
    \ to install requested but missing\npackages."
  type: boolean
  inputBinding:
    prefix: --conda_auto_install
- id: in_cond_a_auto_in_it
  doc: "/ --no_conda_auto_init\nConda dependency resolution for Galaxy will\nauto\
    \ install conda itself using miniconda if\nnot availabe on conda_prefix."
  type: boolean
  inputBinding:
    prefix: --conda_auto_init
- id: in_profile
  doc: "Name of profile (created with the\nprofile_create command) to use with this\n\
    command."
  type: string
  inputBinding:
    prefix: --profile
- id: in_postgres
  doc: Use postgres database type.
  type: boolean
  inputBinding:
    prefix: --postgres
- id: in_database_type
  doc: "[postgres|postgres_docker|sqlite|auto]\nType of database to use for profile\
    \ -\n'auto', 'sqlite', 'postgres', and\n'postgres_docker' are available options.\
    \ Use\npostgres to use an existing postgres server\nyou user can access without\
    \ a password via\nthe psql command. Use postgres_docker to\nhave Planemo manage\
    \ a docker container\nrunning postgres. Data with postgres_docker\nis not yet\
    \ persisted past when you restart\nthe docker container launched by Planemo so\n\
    be careful with this option."
  type: boolean
  inputBinding:
    prefix: --database_type
- id: in_postgres_psql_path
  doc: "Name or or path to postgres client binary\n(psql)."
  type: File
  inputBinding:
    prefix: --postgres_psql_path
- id: in_postgres_database_user
  doc: Postgres username for managed development
  type: string
  inputBinding:
    prefix: --postgres_database_user
- id: in_database_connection
  doc: Database connection string to use for
  type: string
  inputBinding:
    prefix: --database_connection
- id: in_shed_tool_path
  doc: Location of shed tools directory for Galaxy.
  type: Directory
  inputBinding:
    prefix: --shed_tool_path
- id: in_galaxy_single_user
  doc: "/ --no_galaxy_single_user\nBy default Planemo will configure Galaxy to\nrun\
    \ in single-user mode where there is just\none user and this user is automatically\n\
    logged it. Use --no_galaxy_single_user to\nprevent Galaxy from running this way."
  type: boolean
  inputBinding:
    prefix: --galaxy_single_user
- id: in_daemon
  doc: Serve Galaxy process as a daemon.
  type: boolean
  inputBinding:
    prefix: --daemon
- id: in_pid_file
  doc: Location of pid file is executed with
  type: File
  inputBinding:
    prefix: --pid_file
- id: in_daemon_dot
  doc: ''
  type: boolean
  inputBinding:
    prefix: --daemon.
- id: in_ignore_dependency_problems
  doc: "When installing shed repositories for\nworkflows, ignore dependency issues.\
    \ These\nlikely indicate a problem but in some cases\nmay not prevent a workflow\
    \ from successfully\nexecuting."
  type: boolean
  inputBinding:
    prefix: --ignore_dependency_problems
- id: in_shed_install
  doc: "/ --no_shed_install\nBy default Planemo will attempt to install\nrepositories\
    \ needed for workflow testing.\nThis may not be appropriate for production\nservers\
    \ and so this can disabled by calling\nplanemo with --no_shed_install."
  type: boolean
  inputBinding:
    prefix: --shed_install
- id: in_cwl
  doc: "Configure Galaxy for use with CWL tool.\n(this option is experimental and\
    \ will be\nreplaced when and if CWL support is merged\ninto Galaxy)."
  type: boolean
  inputBinding:
    prefix: --cwl
- id: in_cwl_galaxy_root
  doc: "Root of development galaxy directory to\nexecute command with (must be branch\
    \ of\nGalaxy with CWL support, this option is\nexperimental and will be replaced\
    \ with\n--galaxy_root when and if CWL support is\nmerged into Galaxy."
  type: Directory
  inputBinding:
    prefix: --cwl_galaxy_root
- id: in_tool_dot
  doc: planemo will search parent directories to see if any is a Galaxy instance
  type: string
  inputBinding:
    position: 0
- id: in__galaxyemail_text
  doc: --galaxy_email TEXT             E-mail address to use when launching single-
  type: string
  inputBinding:
    position: 0
- id: in_resolvers_dot
  doc: --conda_prefix DIRECTORY        Conda prefix to use for conda dependency
  type: string
  inputBinding:
    position: 0
- id: in_commands_dot
  doc: --conda_exec FILE               Location of conda executable.
  type: string
  inputBinding:
    position: 1
- id: in__shedtoolconf_text
  doc: --shed_tool_conf TEXT           Location of shed tools conf file for Galaxy.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- planemo
- serve
