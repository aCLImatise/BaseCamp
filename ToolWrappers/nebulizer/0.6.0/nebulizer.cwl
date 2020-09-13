class: CommandLineTool
id: ../../../nebulizer.cwl
inputs:
- id: in_api_key
  doc: "specify API key to use for connecting to Galaxy\ninstance. Must be supplied\
    \ if there is no API\nkey stored for the specified instance, (unless\n--username\
    \ option is specified). If there is a\nstored API key this overrides it."
  type: string
  inputBinding:
    prefix: --api_key
- id: in_username
  doc: "specify username (i.e. email) for connecting to\nGalaxy instance, as an alternative\
    \ to using the\nAPI key. Prompts for a password unless one is\nsupplied via the\
    \ --galaxy_password option."
  type: string
  inputBinding:
    prefix: --username
- id: in_galaxy_password
  doc: "supply password for connecting to Galaxy\ninstance, when using the --username\
    \ option."
  type: string
  inputBinding:
    prefix: --galaxy_password
- id: in_no_verify
  doc: "don't verify HTTPS connections when connecting\nto Galaxy instance. Use this\
    \ when interacting\nwith Galaxy instances which use self-signed\ncertificates."
  type: boolean
  inputBinding:
    prefix: --no-verify
- id: in_suppress_warnings
  doc: suppress warning messages from nebulizer.
  type: boolean
  inputBinding:
    prefix: --suppress-warnings
- id: in_debug
  doc: turn on debugging output.
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nebulizer
