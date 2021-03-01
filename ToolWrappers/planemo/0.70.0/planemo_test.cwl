class: CommandLineTool
id: planemo_test.cwl
inputs:
- id: in_failed
  doc: "Re-run only failed tests. This command will\nread tool_test_output.json to\
    \ determine\nwhich tests failed so this file must have\nbeen produced with the\
    \ same set of tool ids\npreviously."
  type: boolean?
  inputBinding:
    prefix: --failed
- id: in_polling_back_off
  doc: "Poll resources with an increasing interval\nbetween requests. Useful when\
    \ testing\nagainst remote and/or production instances\nto limit generated traffic."
  type: long?
  inputBinding:
    prefix: --polling_backoff
- id: in_history_name
  doc: "Name for history (if a history is generated\nas part of testing.)"
  type: string?
  inputBinding:
    prefix: --history_name
- id: in_galaxy_root
  doc: "Root of development galaxy directory to\nexecute command with."
  type: Directory?
  inputBinding:
    prefix: --galaxy_root
- id: in_galaxy_python_version
  doc: "[2|2.7|3|3.5|3.6|3.7|3.8]\nPython version to start Galaxy under"
  type: boolean?
  inputBinding:
    prefix: --galaxy_python_version
- id: in_extra_tools
  doc: "Extra tool sources to include in Galaxy's\ntool panel (file or directory).\
    \ These will\nnot be linted/tested/etc... but they will be\navailable to workflows\
    \ and for interactive\nuse."
  type: File?
  inputBinding:
    prefix: --extra_tools
- id: in_install_galaxy
  doc: "Download and configure a disposable copy of\nGalaxy from github."
  type: boolean?
  inputBinding:
    prefix: --install_galaxy
- id: in_galaxy_branch
  doc: "Branch of Galaxy to target (defaults to\nmaster) if a Galaxy root isn't specified."
  type: string?
  inputBinding:
    prefix: --galaxy_branch
- id: in_galaxy_source
  doc: "Git source of Galaxy to target (defaults to\nthe official galaxyproject github\
    \ source if\na Galaxy root isn't specified."
  type: string?
  inputBinding:
    prefix: --galaxy_source
- id: in_skip_v_env
  doc: "Do not create or source a virtualenv\nenvironment for Galaxy, this should\
    \ be used\nor instance to preserve an externally\nconfigured virtual environment\
    \ or conda\nenvironment."
  type: boolean?
  inputBinding:
    prefix: --skip_venv
- id: in_no_cache_galaxy
  doc: "Skip caching of Galaxy source and\ndependencies obtained with --install_galaxy.\n\
    Not caching this results in faster downloads\n(no git) - so is better on throw\
    \ away\ninstances such with TravisCI."
  type: boolean?
  inputBinding:
    prefix: --no_cache_galaxy
- id: in_no_cleanup
  doc: Do not cleanup temp files created for and by
  type: boolean?
  inputBinding:
    prefix: --no_cleanup
- id: in_no_docker
  doc: Run Galaxy tools in Docker if enabled.
  type: boolean?
  inputBinding:
    prefix: --no_docker
- id: in_docker_cmd
  doc: "Command used to launch docker (defaults to\ndocker)."
  type: string?
  inputBinding:
    prefix: --docker_cmd
- id: in_no_docker_sudo
  doc: Flag to use sudo when running docker.
  type: boolean?
  inputBinding:
    prefix: --no_docker_sudo
- id: in_docker_host
  doc: "Docker host to target when executing docker\ncommands (defaults to localhost)."
  type: string?
  inputBinding:
    prefix: --docker_host
- id: in_docker_sudo_cmd
  doc: "sudo command to use when --docker_sudo is\nenabled (defaults to sudo)."
  type: string?
  inputBinding:
    prefix: --docker_sudo_cmd
- id: in_mulled_containers
  doc: "Test tools against mulled containers (forces\n--docker)."
  type: boolean?
  inputBinding:
    prefix: --mulled_containers
- id: in_job_config_file
  doc: Job configuration file for Galaxy to target.
  type: File?
  inputBinding:
    prefix: --job_config_file
- id: in_tool_dependency_dir
  doc: Tool dependency dir for Galaxy to target.
  type: Directory?
  inputBinding:
    prefix: --tool_dependency_dir
- id: in_test_data
  doc: "test-data directory to for specified\ntool(s)."
  type: Directory?
  inputBinding:
    prefix: --test_data
- id: in_tool_data_table
  doc: "tool_data_table_conf.xml file to for\nspecified tool(s)."
  type: File?
  inputBinding:
    prefix: --tool_data_table
- id: in_dependency_resolvers_config_file
  doc: "Dependency resolver configuration for Galaxy\nto target."
  type: File?
  inputBinding:
    prefix: --dependency_resolvers_config_file
- id: in_brew_dependency_resolution
  doc: "Configure Galaxy to use plain brew\ndependency resolution."
  type: boolean?
  inputBinding:
    prefix: --brew_dependency_resolution
- id: in_shed_dependency_resolution
  doc: "Configure Galaxy to use brewed Tool Shed\ndependency resolution."
  type: boolean?
  inputBinding:
    prefix: --shed_dependency_resolution
- id: in_no_dependency_resolution
  doc: Configure Galaxy with no dependency
  type: boolean?
  inputBinding:
    prefix: --no_dependency_resolution
- id: in_cond_a_debug
  doc: Enable more verbose conda logging.
  type: boolean?
  inputBinding:
    prefix: --conda_debug
- id: in_cond_a_ensure_channels
  doc: "Ensure conda is configured with specified\ncomma separated list of channels."
  type: string?
  inputBinding:
    prefix: --conda_ensure_channels
- id: in_cond_a_use_local
  doc: "Use locally built packages while building\nConda environments."
  type: boolean?
  inputBinding:
    prefix: --conda_use_local
- id: in_cond_a_dependency_resolution
  doc: "Configure Galaxy to use only conda for\ndependency resolution."
  type: boolean?
  inputBinding:
    prefix: --conda_dependency_resolution
- id: in_cond_a_copy_dependencies
  doc: "Conda dependency resolution for Galaxy will\ncopy dependencies instead of\
    \ attempting to\nlink them."
  type: boolean?
  inputBinding:
    prefix: --conda_copy_dependencies
- id: in_no_cond_a_auto_install
  doc: "Conda dependency resolution for Galaxy will\nattempt to install requested\
    \ but missing\npackages."
  type: boolean?
  inputBinding:
    prefix: --no_conda_auto_install
- id: in_no_cond_a_auto_in_it
  doc: "Conda dependency resolution for Galaxy will\nauto install conda itself using\
    \ miniconda if\nnot availabe on conda_prefix."
  type: boolean?
  inputBinding:
    prefix: --no_conda_auto_init
- id: in_profile
  doc: "Name of profile (created with the\nprofile_create command) to use with this\n\
    command."
  type: string?
  inputBinding:
    prefix: --profile
- id: in_postgres
  doc: Use postgres database type.
  type: boolean?
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
  type: boolean?
  inputBinding:
    prefix: --database_type
- id: in_postgres_psql_path
  doc: "Name or or path to postgres client binary\n(psql)."
  type: File?
  inputBinding:
    prefix: --postgres_psql_path
- id: in_postgres_database_user
  doc: Postgres username for managed development
  type: string?
  inputBinding:
    prefix: --postgres_database_user
- id: in_database_connection
  doc: Database connection string to use for
  type: string?
  inputBinding:
    prefix: --database_connection
- id: in_shed_tool_path
  doc: Location of shed tools directory for Galaxy.
  type: Directory?
  inputBinding:
    prefix: --shed_tool_path
- id: in_no_galaxy_single_user
  doc: "By default Planemo will configure Galaxy to\nrun in single-user mode where\
    \ there is just\none user and this user is automatically\nlogged it. Use --no_galaxy_single_user\
    \ to\nprevent Galaxy from running this way."
  type: boolean?
  inputBinding:
    prefix: --no_galaxy_single_user
- id: in_update_test_data
  doc: "Update test-data directory with job outputs\n(normally written to directory\n\
    --job_output_files if specified.)"
  type: boolean?
  inputBinding:
    prefix: --update_test_data
- id: in_no_paste_test_data_paths
  doc: "By default Planemo will use or not use\nGalaxy's path paste option to load\
    \ test data\ninto a history based on the engine type it\nis targeting. This can\
    \ override the logic to\nexplicitly enable or disable path pasting."
  type: boolean?
  inputBinding:
    prefix: --no_paste_test_data_paths
- id: in_test_output
  doc: "Output test report (HTML - for humans)\ndefaults to tool_test_output.html."
  type: File?
  inputBinding:
    prefix: --test_output
- id: in_test_output_text
  doc: "Output test report (Basic text - for display\nin CI)"
  type: File?
  inputBinding:
    prefix: --test_output_text
- id: in_test_output_markdown
  doc: "Output test report (Markdown style - for\nhumans & computers)"
  type: File?
  inputBinding:
    prefix: --test_output_markdown
- id: in_test_output_x_unit
  doc: Output test report (xunit style - for CI
  type: File?
  inputBinding:
    prefix: --test_output_xunit
- id: in_job_output_files
  doc: Write job outputs to specified directory.
  type: Directory?
  inputBinding:
    prefix: --job_output_files
- id: in_summary
  doc: "[none|minimal|compact]\nSummary style printed to planemo's standard\noutput\
    \ (see output reports for more complete\nsummary). Set to 'none' to disable\n\
    completely."
  type: boolean?
  inputBinding:
    prefix: --summary
- id: in_engine
  doc: "[galaxy|docker_galaxy|cwltool|toil|external_galaxy]\nSelect an engine to run\
    \ or test artifacts\nsuch as tools and workflows. Defaults to a\nlocal Galaxy,\
    \ but running Galaxy within a\nDocker container or the CWL reference\nimplementation\
    \ 'cwltool' and 'toil' be\nselected."
  type: boolean?
  inputBinding:
    prefix: --engine
- id: in_non_strict_cwl
  doc: Disable strict validation of CWL.
  type: boolean?
  inputBinding:
    prefix: --non_strict_cwl
- id: in_no_container
  doc: "If cwltool engine is used, disable Docker\ncontainer usage."
  type: boolean?
  inputBinding:
    prefix: --no-container
- id: in_docker_galaxy_image
  doc: "Docker image identifier for docker-galaxy-\nflavor used if engine type is\
    \ specified as\n``docker-galaxy``. Defaults to\nquay.io/bgruening/galaxy."
  type: string?
  inputBinding:
    prefix: --docker_galaxy_image
- id: in_docker_extra_volume
  doc: Extra path to mount if --engine docker.
  type: File?
  inputBinding:
    prefix: --docker_extra_volume
- id: in_ignore_dependency_problems
  doc: "When installing shed repositories for\nworkflows, ignore dependency issues.\
    \ These\nlikely indicate a problem but in some cases\nmay not prevent a workflow\
    \ from successfully\nexecuting."
  type: boolean?
  inputBinding:
    prefix: --ignore_dependency_problems
- id: in_no_shed_install
  doc: "By default Planemo will attempt to install\nrepositories needed for workflow\
    \ testing.\nThis may not be appropriate for production\nservers and so this can\
    \ disabled by calling\nplanemo with --no_shed_install."
  type: boolean?
  inputBinding:
    prefix: --no_shed_install
- id: in_galaxy_url
  doc: "Remote Galaxy URL to use with external\nGalaxy engine."
  type: string?
  inputBinding:
    prefix: --galaxy_url
- id: in_galaxy_admin_key
  doc: Admin key to use with external Galaxy
  type: string?
  inputBinding:
    prefix: --galaxy_admin_key
- id: in_text_email_address
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
- id: in_engine_dot
  doc: --galaxy_user_key TEXT          User key to use with external Galaxy engine.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- planemo
- test
