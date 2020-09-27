class: CommandLineTool
id: shed_tools_test.cwl
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
- id: in_test_json
  doc: "Record tool test output to specified file. This file\ncan be turned into reports\
    \ with ``planemo test_reports\n<output.json>``."
  type: File
  inputBinding:
    prefix: --test_json
- id: in_test_user_api_key
  doc: "A user is needed to execute the tests. This can be\ndifferent the --api_key\
    \ which is assumed to be an\nadmin key. If --api_key is a valid user (e.g. it\
    \ is\nnot a master API key) this does not need to be\nspecified and --api_key\
    \ will be reused."
  type: string
  inputBinding:
    prefix: --test_user_api_key
- id: in_test_user
  doc: "A user is needed to execute the tests. If --api_key is\na master api key (i.e.\
    \ not tied to a real user) and\n--test_user_api_key isn't specified, this user\
    \ email\nwill be used. This user will be created if needed."
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
  doc: "Record tool test output to specified file. This file\ncan be turned into reports\
    \ with ``planemo test_reports\n<output.json>``."
  type: File
  outputBinding:
    glob: $(inputs.in_test_json)
cwlVersion: v1.1
baseCommand:
- shed-tools
- test
