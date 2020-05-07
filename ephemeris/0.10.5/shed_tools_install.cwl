class: CommandLineTool
id: shed_tools_install.cwl
inputs:
- id: tools_file
  doc: Tools file to use (see tool_list.yaml.sample)
  type: string
  inputBinding:
    prefix: --toolsfile
- id: yaml_tool
  doc: Install tool represented by yaml string
  type: string
  inputBinding:
    prefix: --yaml_tool
- id: name
  doc: The name of the tool to install (only applicable if the tools file is not provided).
  type: string
  inputBinding:
    prefix: --name
- id: owner
  doc: The owner of the tool to install (only applicable if the tools file is not
    provided).
  type: string
  inputBinding:
    prefix: --owner
- id: revisions
  doc: '[REVISIONS [REVISIONS ...]] The revisions of the tool repository that will
    be installed. All revisions must be specified after this flag by a space.Example:
    --revisions 0a5c7992b1ac f048033da666(Only applicable if the tools file is not
    provided).'
  type: boolean
  inputBinding:
    prefix: --revisions
- id: toolshed
  doc: The Tool Shed URL where to install the tool from. This is applicable only if
    the tool info is provided as an option vs. in the tools file.
  type: string
  inputBinding:
    prefix: --toolshed
- id: install_tool_dependencies
  doc: Turn on installation of tool dependencies using classic toolshed packages.
    Can be overwritten on a per-tool basis in the tools file.
  type: boolean
  inputBinding:
    prefix: --install_tool_dependencies
- id: skip_install_resolver_dependencies
  doc: Skip installing tool dependencies through resolver (e.g. conda). Will be ignored
    on galaxy releases older than 16.07. Can be overwritten on a per-tool basis in
    the tools file
  type: boolean
  inputBinding:
    prefix: --skip_install_resolver_dependencies
- id: skip_install_repository_dependencies
  doc: Skip installing the repository dependencies.
  type: boolean
  inputBinding:
    prefix: --skip_install_repository_dependencies
- id: test
  doc: Run tool tests on install tools, requires Galaxy 18.05 or newer.
  type: boolean
  inputBinding:
    prefix: --test
- id: test_existing
  doc: If testing tools during install, also run tool tests on repositories already
    installed (i.e. skipped repositories).
  type: boolean
  inputBinding:
    prefix: --test_existing
- id: test_json
  doc: If testing tools, record tool test output to specified file. This file can
    be turned into reports with ``planemo test_reports <output.json>``.
  type: string
  inputBinding:
    prefix: --test_json
- id: test_user_api_key
  doc: If testing tools, a user is needed to execute the tests. This can be different
    the --api_key which is assumed to be an admin key. If --api_key is a valid user
    (e.g. it is not a master API key) this does not need to be specified and --api_key
    will be reused.
  type: string
  inputBinding:
    prefix: --test_user_api_key
- id: test_user
  doc: If testing tools, a user is needed to execute the tests. If --api_key is a
    master api key (i.e. not tied to a real user) and --test_user_api_key isn't specified,
    this user email will be used. This user will be created if needed.
  type: string
  inputBinding:
    prefix: --test_user
- id: parallel_tests
  doc: Specify the maximum number of tests that will be run in parallel.
  type: string
  inputBinding:
    prefix: --parallel_tests
- id: section
  doc: Galaxy tool panel section ID where the tool will be installed (the section
    must exist in Galaxy; only applicable if the tools file is not provided).
  type: string
  inputBinding:
    prefix: --section
- id: section_label
  doc: Galaxy tool panel section label where tool will be installed (if the section
    does not exist, it will be created; only applicable if the tools file is not provided).
  type: string
  inputBinding:
    prefix: --section_label
- id: latest
  doc: Will override the revisions in the tools file and always install the latest
    revision.
  type: boolean
  inputBinding:
    prefix: --latest
- id: verbose
  doc: Increase output verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: log_file
  doc: Where the log file should be stored. Default is a file in your system's temp
    folder
  type: string
  inputBinding:
    prefix: --log_file
- id: galaxy
  doc: Target Galaxy instance URL/IP address
  type: string
  inputBinding:
    prefix: --galaxy
- id: user
  doc: Galaxy user email address
  type: string
  inputBinding:
    prefix: --user
- id: password
  doc: Password for the Galaxy user
  type: string
  inputBinding:
    prefix: --password
- id: api_key
  doc: Galaxy admin user API key (required if not defined in the tools list file)
  type: string
  inputBinding:
    prefix: --api_key
outputs: []
cwlVersion: v1.1
baseCommand:
- shed-tools
- install
