class: CommandLineTool
id: shed_tools_update.cwl
inputs:
- id: in_tools_file
  doc: Tools file to use (see tool_list.yaml.sample)
  type: File
  inputBinding:
    prefix: --toolsfile
- id: in_yaml_tool
  doc: Install tool represented by yaml string
  type: string
  inputBinding:
    prefix: --yaml_tool
- id: in_name
  doc: "The name of the tool to install (only applicable if\nthe tools file is not\
    \ provided)."
  type: File
  inputBinding:
    prefix: --name
- id: in_owner
  doc: "The owner of the tool to install (only applicable if\nthe tools file is not\
    \ provided)."
  type: File
  inputBinding:
    prefix: --owner
- id: in_revisions
  doc: "[REVISIONS [REVISIONS ...]]\nThe revisions of the tool repository that will\
    \ be\ninstalled. All revisions must be specified after this\nflag by a space.Example:\
    \ --revisions 0a5c7992b1ac\nf048033da666(Only applicable if the tools file is\
    \ not\nprovided)."
  type: boolean
  inputBinding:
    prefix: --revisions
- id: in_toolshed
  doc: "The Tool Shed URL where to install the tool from. This\nis applicable only\
    \ if the tool info is provided as an\noption vs. in the tools file."
  type: File
  inputBinding:
    prefix: --toolshed
- id: in_install_tool_dependencies
  doc: "Turn on installation of tool dependencies using\nclassic toolshed packages.\
    \ Can be overwritten on a\nper-tool basis in the tools file."
  type: boolean
  inputBinding:
    prefix: --install_tool_dependencies
- id: in_skip_install_resolver_dependencies
  doc: "Skip installing tool dependencies through resolver\n(e.g. conda). Will be\
    \ ignored on galaxy releases older\nthan 16.07. Can be overwritten on a per-tool\
    \ basis in\nthe tools file"
  type: boolean
  inputBinding:
    prefix: --skip_install_resolver_dependencies
- id: in_skip_install_repository_dependencies
  doc: Skip installing the repository dependencies.
  type: boolean
  inputBinding:
    prefix: --skip_install_repository_dependencies
- id: in_test
  doc: "Run tool tests on install tools, requires Galaxy 18.05\nor newer."
  type: boolean
  inputBinding:
    prefix: --test
- id: in_test_existing
  doc: "If testing tools during install, also run tool tests\non repositories already\
    \ installed (i.e. skipped\nrepositories)."
  type: boolean
  inputBinding:
    prefix: --test_existing
- id: in_test_json
  doc: "If testing tools, record tool test output to specified\nfile. This file can\
    \ be turned into reports with\n``planemo test_reports <output.json>``."
  type: File
  inputBinding:
    prefix: --test_json
- id: in_test_user_api_key
  doc: "If testing tools, a user is needed to execute the\ntests. This can be different\
    \ the --api_key which is\nassumed to be an admin key. If --api_key is a valid\n\
    user (e.g. it is not a master API key) this does not\nneed to be specified and\
    \ --api_key will be reused."
  type: string
  inputBinding:
    prefix: --test_user_api_key
- id: in_test_user
  doc: "If testing tools, a user is needed to execute the\ntests. If --api_key is\
    \ a master api key (i.e. not tied\nto a real user) and --test_user_api_key isn't\n\
    specified, this user email will be used. This user\nwill be created if needed."
  type: string
  inputBinding:
    prefix: --test_user
- id: in_parallel_tests
  doc: "Specify the maximum number of tests that will be run\nin parallel."
  type: long
  inputBinding:
    prefix: --parallel_tests
- id: in_verbose
  doc: Increase output verbosity.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_log_file
  doc: "Where the log file should be stored. Default is a file\nin your system's temp\
    \ folder"
  type: File
  inputBinding:
    prefix: --log_file
- id: in_galaxy
  doc: Target Galaxy instance URL/IP address
  type: string
  inputBinding:
    prefix: --galaxy
- id: in_user
  doc: Galaxy user email address
  type: string
  inputBinding:
    prefix: --user
- id: in_password
  doc: Password for the Galaxy user
  type: string
  inputBinding:
    prefix: --password
- id: in_api_key
  doc: "Galaxy admin user API key (required if not defined in\nthe tools list file)\n"
  type: File
  inputBinding:
    prefix: --api_key
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_test_json
  doc: "If testing tools, record tool test output to specified\nfile. This file can\
    \ be turned into reports with\n``planemo test_reports <output.json>``."
  type: File
  outputBinding:
    glob: $(inputs.in_test_json)
cwlVersion: v1.1
baseCommand:
- shed-tools
- update
