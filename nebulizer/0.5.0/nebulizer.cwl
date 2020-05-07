class: CommandLineTool
id: nebulizer.cwl
inputs:
- id: api_key
  doc: specify API key to use for connecting to Galaxy instance. Must be supplied
    if there is no API key stored for the specified instance, (unless --username option
    is specified). If there is a stored API key this overrides it.
  type: string
  inputBinding:
    prefix: --api_key
- id: username
  doc: specify username (i.e. email) for connecting to Galaxy instance, as an alternative
    to using the API key. Prompts for a password unless one is supplied via the --galaxy_password
    option.
  type: string
  inputBinding:
    prefix: --username
- id: galaxy_password
  doc: supply password for connecting to Galaxy instance, when using the --username
    option.
  type: string
  inputBinding:
    prefix: --galaxy_password
- id: no_verify
  doc: don't verify HTTPS connections when connecting to Galaxy instance. Use this
    when interacting with Galaxy instances which use self-signed certificates.
  type: boolean
  inputBinding:
    prefix: --no-verify
- id: suppress_warnings
  doc: suppress warning messages from nebulizer.
  type: boolean
  inputBinding:
    prefix: --suppress-warnings
- id: debug
  doc: turn on debugging output.
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- nebulizer
