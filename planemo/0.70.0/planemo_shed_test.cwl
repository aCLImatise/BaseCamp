class: CommandLineTool
id: planemo_shed_test.cwl
inputs:
- id: recursive
  doc: Recursively perform command for nested repository directories.
  type: boolean
  inputBinding:
    prefix: --recursive
- id: fail_fast
  doc: If multiple repositories are specified and an error occurs stop immediately
    instead of processing remaining repositories.
  type: boolean
  inputBinding:
    prefix: --fail_fast
- id: owner
  doc: Tool Shed repository owner (username).
  type: string
  inputBinding:
    prefix: --owner
- id: name
  doc: Tool Shed repository name (defaults to the inferred tool directory name).
  type: string
  inputBinding:
    prefix: --name
- id: shed_email
  doc: E-mail for Tool Shed auth (required unless shed_key is specified).
  type: string
  inputBinding:
    prefix: --shed_email
- id: shed_key
  doc: API key for Tool Shed access. An API key is required unless e-mail and password
    is specified. This key can be specified with either --shed_key or --shed_key_from_env.
  type: string
  inputBinding:
    prefix: --shed_key
- id: shed_key_from_env
  doc: Environment variable to read API key for Tool Shed access from.
  type: string
  inputBinding:
    prefix: --shed_key_from_env
- id: shed_password
  doc: Password for Tool Shed auth (required unless shed_key is specified).
  type: string
  inputBinding:
    prefix: --shed_password
- id: shed_target
  doc: Tool Shed to target (this can be 'toolshed', 'testtoolshed', 'local' (alias
    for http://localhost:9009/), an arbitrary url or mappings defined ~/.planemo.yml.
  type: string
  inputBinding:
    prefix: --shed_target
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
- id: update_test_data
  doc: Update test-data directory with job outputs (normally written to directory
    --job_output_files if specified.)
  type: boolean
  inputBinding:
    prefix: --update_test_data
- id: paste_test_data_paths
  doc: / --no_paste_test_data_paths By default Planemo will use or not use Galaxy's
    path paste option to load test data into a history based on the engine type it
    is targeting. This can override the logic to explicitly enable or disable path
    pasting.
  type: boolean
  inputBinding:
    prefix: --paste_test_data_paths
- id: test_output
  doc: Output test report (HTML - for humans) defaults to tool_test_output.html.
  type: File
  inputBinding:
    prefix: --test_output
- id: test_output_text
  doc: Output test report (Basic text - for display in CI)
  type: File
  inputBinding:
    prefix: --test_output_text
- id: test_output_markdown
  doc: Output test report (Markdown style - for humans & computers)
  type: File
  inputBinding:
    prefix: --test_output_markdown
- id: test_output_x_unit
  doc: Output test report (xunit style - for CI systems
  type: File
  inputBinding:
    prefix: --test_output_xunit
- id: test_output_junit
  doc: Output test report (jUnit style - for CI systems
  type: File
  inputBinding:
    prefix: --test_output_junit
- id: test_output_json
  doc: Output test report (planemo json) defaults to tool_test_output.json.
  type: File
  inputBinding:
    prefix: --test_output_json
- id: job_output_files
  doc: Write job outputs to specified directory.
  type: Directory
  inputBinding:
    prefix: --job_output_files
- id: summary
  doc: "[none|minimal|compact] Summary style printed to planemo's standard output\
    \ (see output reports for more complete summary). Set to 'none' to disable completely."
  type: boolean
  inputBinding:
    prefix: --summary
- id: skip_dependencies
  doc: Do not install shed dependencies as part of repository installation.
  type: boolean
  inputBinding:
    prefix: --skip_dependencies
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- shed_test
