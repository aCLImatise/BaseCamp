class: CommandLineTool
id: planemo_shed_test.cwl
inputs:
- id: in_recursive
  doc: "Recursively perform command for nested\nrepository directories."
  type: boolean?
  inputBinding:
    prefix: --recursive
- id: in_fail_fast
  doc: "If multiple repositories are specified and\nan error occurs stop immediately\
    \ instead of\nprocessing remaining repositories."
  type: boolean?
  inputBinding:
    prefix: --fail_fast
- id: in_owner
  doc: Tool Shed repository owner (username).
  type: string?
  inputBinding:
    prefix: --owner
- id: in_name
  doc: "Tool Shed repository name (defaults to the\ninferred tool directory name)."
  type: Directory?
  inputBinding:
    prefix: --name
- id: in_shed_email
  doc: "E-mail for Tool Shed auth (required unless\nshed_key is specified)."
  type: string?
  inputBinding:
    prefix: --shed_email
- id: in_shed_key
  doc: "API key for Tool Shed access. An API key is\nrequired unless e-mail and password\
    \ is\nspecified. This key can be specified with\neither --shed_key or --shed_key_from_env."
  type: string?
  inputBinding:
    prefix: --shed_key
- id: in_shed_key_from_env
  doc: "Environment variable to read API key for\nTool Shed access from."
  type: string?
  inputBinding:
    prefix: --shed_key_from_env
- id: in_shed_password
  doc: "Password for Tool Shed auth (required unless\nshed_key is specified)."
  type: string?
  inputBinding:
    prefix: --shed_password
- id: in_shed_target
  doc: "Tool Shed to target (this can be 'toolshed',\n'testtoolshed', 'local' (alias\
    \ for\nhttp://localhost:9009/), an arbitrary url or\nmappings defined ~/.planemo.yml."
  type: long?
  inputBinding:
    prefix: --shed_target
- id: in_galaxy_root
  doc: "Root of development galaxy directory to\nexecute command with."
  type: Directory?
  inputBinding:
    prefix: --galaxy_root
- id: in_galaxy_python_version
  doc: "[3|3.6|3.7|3.8|3.9]\nPython version to start Galaxy under"
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
    \ be used\nto preserve an externally configured virtual\nenvironment or conda\
    \ environment."
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
- id: in_test_output_json
  doc: "Output test report (planemo json) defaults\nto tool_test_output.json."
  type: File?
  inputBinding:
    prefix: --test_output_json
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
- id: in_skip_dependencies
  doc: "Do not install shed dependencies as part of\nrepository installation."
  type: boolean?
  inputBinding:
    prefix: --skip_dependencies
- id: in_galaxy_dot
  doc: --galaxy_email TEXT             E-mail address to use when launching single-
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/planemo:0.74.3--py_0
cwlVersion: v1.1
baseCommand:
- planemo
- shed_test
