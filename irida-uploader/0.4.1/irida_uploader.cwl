class: CommandLineTool
id: irida_uploader.cwl
inputs:
- id: directory
  doc: Location of sequencing run to upload. Directory must be writable.
  type: Directory
  inputBinding:
    prefix: --directory
- id: config
  doc: Path to an alternative configuration file. This overrides the default config
    file in the config directory
  type: string
  inputBinding:
    prefix: --config
- id: force
  doc: Uploader will ignore the status file, and try to upload even when a run is
    in non new status.
  type: boolean
  inputBinding:
    prefix: --force
- id: batch
  doc: Uploader will expect a directory containing a sequencing run directories, and
    upload in batch. The list of runs is generated at start time (Runs added to directory
    mid upload will not be uploaded).
  type: boolean
  inputBinding:
    prefix: --batch
- id: ci
  doc: '[CONFIG_CLIENT_ID], --config_client_id [CONFIG_CLIENT_ID] Override the "client_id"
    field in config file. This is for the uploader client created in IRIDA, used to
    handle the data upload'
  type: boolean
  inputBinding:
    prefix: -ci
- id: cs
  doc: '[CONFIG_CLIENT_SECRET], --config_client_secret [CONFIG_CLIENT_SECRET] Override
    "client_secret" in config file. This is for the uploader client created in IRIDA,
    used to handle the data upload'
  type: boolean
  inputBinding:
    prefix: -cs
- id: cu
  doc: '[CONFIG_USERNAME], --config_username [CONFIG_USERNAME] Override "username"
    in config file. This is your IRIDA account username.'
  type: boolean
  inputBinding:
    prefix: -cu
- id: cp
  doc: '[CONFIG_PASSWORD], --config_password [CONFIG_PASSWORD] Override "password"
    in config file. This corresponds to your IRIDA account.'
  type: boolean
  inputBinding:
    prefix: -cp
- id: cb
  doc: '[CONFIG_BASE_URL], --config_base_url [CONFIG_BASE_URL] Override "base_url"
    in config file. The api url for your irida instance (example: https://my.irida.server/api/)'
  type: boolean
  inputBinding:
    prefix: -cb
- id: cr
  doc: "[CONFIG_PARSER], --config_parser [CONFIG_PARSER] Override \"parser\" in config\
    \ file. Choose the type of sequencer data that is being uploaded. Supported parsers:\
    \ ['miseq', 'miseq_v26', 'miseq_v31', 'miniseq', 'nextseq', 'iseq', 'directory']"
  type: boolean
  inputBinding:
    prefix: -cr
outputs: []
cwlVersion: v1.1
baseCommand:
- irida-uploader
