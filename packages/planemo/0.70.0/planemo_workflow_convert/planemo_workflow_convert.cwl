class: CommandLineTool
id: planemo_workflow_convert.cwl
inputs:
- id: in_force
  doc: "Overwrite existing files if present.\n-o, --output FILE\n--galaxy_root DIRECTORY\
    \         Root of development galaxy directory to\nexecute command with.\n--galaxy_python_version\
    \ [2|2.7|3|3.5|3.6|3.7|3.8]\nPython version to start Galaxy under\n--extra_tools\
    \ PATH              Extra tool sources to include in Galaxy's\ntool panel (file\
    \ or directory). These will\nnot be linted/tested/etc... but they will be\navailable\
    \ to workflows and for interactive\nuse.\n--install_galaxy                Download\
    \ and configure a disposable copy of\nGalaxy from github.\n--galaxy_branch TEXT\
    \            Branch of Galaxy to target (defaults to\nmaster) if a Galaxy root\
    \ isn't specified.\n--galaxy_source TEXT            Git source of Galaxy to target\
    \ (defaults to\nthe official galaxyproject github source if\na Galaxy root isn't\
    \ specified.\n--skip_venv                     Do not create or source a virtualenv\n\
    environment for Galaxy, this should be used\nor instance to preserve an externally\n\
    configured virtual environment or conda\nenvironment.\n--no_cache_galaxy     \
    \          Skip caching of Galaxy source and\ndependencies obtained with --install_galaxy.\n\
    Not caching this results in faster downloads\n(no git) - so is better on throw\
    \ away\ninstances such with TravisCI.\n--no_cleanup                    Do not\
    \ cleanup temp files created for and by\nGalaxy.\n--galaxy_email TEXT        \
    \     E-mail address to use when launching single-\nuser Galaxy server.\n--docker\
    \ / --no_docker          Run Galaxy tools in Docker if enabled.\n--docker_cmd\
    \ TEXT               Command used to launch docker (defaults to\ndocker).\n--docker_sudo\
    \ / --no_docker_sudo\nFlag to use sudo when running docker.\n--docker_host TEXT\
    \              Docker host to target when executing docker\ncommands (defaults\
    \ to localhost).\n--docker_sudo_cmd TEXT          sudo command to use when --docker_sudo\
    \ is\nenabled (defaults to sudo).\n--mulled_containers, --biocontainers\nTest\
    \ tools against mulled containers (forces\n--docker).\n--job_config_file FILE\
    \          Job configuration file for Galaxy to target.\n--tool_dependency_dir\
    \ DIRECTORY\nTool dependency dir for Galaxy to target.\n--port INTEGER       \
    \           Port to serve Galaxy on (default is 9090).\n--host TEXT          \
    \           Host to bind Galaxy to. Default is 127.0.0.1\nthat is restricted to\
    \ localhost connections\nfor security reasons set to 0.0.0.0 to bind\nGalaxy to\
    \ all ports including potentially\npublicly accessible ones.\n--engine [galaxy|docker_galaxy|external_galaxy]\n\
    Select an engine to serve artifacts such as\ntools and workflows. Defaults to\
    \ a local\nGalaxy, but running Galaxy within a Docker\ncontainer.\n--non_strict_cwl\
    \                Disable strict validation of CWL.\n--docker_galaxy_image TEXT\
    \      Docker image identifier for docker-galaxy-\nflavor used if engine type\
    \ is specified as\n``docker-galaxy``. Defaults to\nquay.io/bgruening/galaxy.\n\
    --docker_extra_volume PATH      Extra path to mount if --engine docker.\n--test_data\
    \ DIRECTORY           test-data directory to for specified\ntool(s).\n--tool_data_table\
    \ PATH          tool_data_table_conf.xml file to for\nspecified tool(s).\n--dependency_resolvers_config_file\
    \ FILE\nDependency resolver configuration for Galaxy\nto target.\n--brew_dependency_resolution\
    \    Configure Galaxy to use plain brew\ndependency resolution.\n--shed_dependency_resolution\
    \    Configure Galaxy to use brewed Tool Shed\ndependency resolution.\n--no_dependency_resolution\
    \      Configure Galaxy with no dependency\nresolvers.\n--conda_prefix DIRECTORY\
    \        Conda prefix to use for conda dependency\ncommands.\n--conda_exec FILE\
    \               Location of conda executable.\n--conda_debug                 \
    \  Enable more verbose conda logging.\n--conda_channels, --conda_ensure_channels\
    \ TEXT\nEnsure conda is configured with specified\ncomma separated list of channels.\n\
    --conda_use_local               Use locally built packages while building\nConda\
    \ environments.\n--conda_dependency_resolution   Configure Galaxy to use only\
    \ conda for\ndependency resolution.\n--conda_copy_dependencies       Conda dependency\
    \ resolution for Galaxy will\ncopy dependencies instead of attempting to\nlink\
    \ them.\n--conda_auto_install / --no_conda_auto_install\nConda dependency resolution\
    \ for Galaxy will\nattempt to install requested but missing\npackages.\n--conda_auto_init\
    \ / --no_conda_auto_init\nConda dependency resolution for Galaxy will\nauto install\
    \ conda itself using miniconda if\nnot availabe on conda_prefix.\n--profile TEXT\
    \                  Name of profile (created with the\nprofile_create command)\
    \ to use with this\ncommand.\n--postgres                      Use postgres database\
    \ type.\n--database_type [postgres|postgres_docker|sqlite|auto]\nType of database\
    \ to use for profile -\n'auto', 'sqlite', 'postgres', and\n'postgres_docker' are\
    \ available options. Use\npostgres to use an existing postgres server\nyou user\
    \ can access without a password via\nthe psql command. Use postgres_docker to\n\
    have Planemo manage a docker container\nrunning postgres. Data with postgres_docker\n\
    is not yet persisted past when you restart\nthe docker container launched by Planemo\
    \ so\nbe careful with this option.\n--postgres_psql_path TEXT       Name or or\
    \ path to postgres client binary\n(psql).\n--postgres_database_user TEXT   Postgres\
    \ username for managed development\ndatabases.\n--postgres_database_host TEXT\
    \   Postgres host name for managed development\ndatabases.\n--postgres_database_port\
    \ TEXT   Postgres port for managed development\ndatabases.\n--file_path DIRECTORY\
    \           Location for files created by Galaxy (e.g.\ndatabase/files).\n--database_connection\
    \ TEXT      Database connection string to use for\nGalaxy.\n--shed_tool_conf TEXT\
    \           Location of shed tools conf file for Galaxy.\n--shed_tool_path TEXT\
    \           Location of shed tools directory for Galaxy.\n--galaxy_single_user\
    \ / --no_galaxy_single_user\nBy default Planemo will configure Galaxy to\nrun\
    \ in single-user mode where there is just\none user and this user is automatically\n\
    logged it. Use --no_galaxy_single_user to\nprevent Galaxy from running this way.\n\
    --daemon                        Serve Galaxy process as a daemon.\n--pid_file\
    \ FILE                 Location of pid file is executed with\n--daemon.\n--ignore_dependency_problems\
    \    When installing shed repositories for\nworkflows, ignore dependency issues.\
    \ These\nlikely indicate a problem but in some cases\nmay not prevent a workflow\
    \ from successfully\nexecuting.\n--shed_install / --no_shed_install\nBy default\
    \ Planemo will attempt to install\nrepositories needed for workflow testing.\n\
    This may not be appropriate for production\nservers and so this can disabled by\
    \ calling\nplanemo with --no_shed_install.\n--help                          Show\
    \ this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_workflow_path
  doc: ''
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
- workflow_convert
