class: CommandLineTool
id: irida_uploader.cwl
inputs:
- id: in_directory
  doc: "Location of sequencing run to upload.\nDirectory must be writable."
  type: Directory?
  inputBinding:
    prefix: --directory
- id: in_config
  doc: "Path to an alternative configuration file. This\noverrides the default config\
    \ file in the config\ndirectory"
  type: File?
  inputBinding:
    prefix: --config
- id: in_force
  doc: "Uploader will ignore the status file, and try to\nupload even when a run is\
    \ in non new status."
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_batch
  doc: "Uploader will expect a directory containing a\nsequencing run directories,\
    \ and upload in batch. The\nlist of runs is generated at start time (Runs added\
    \ to\ndirectory mid upload will not be uploaded)."
  type: boolean?
  inputBinding:
    prefix: --batch
- id: in_assemblies
  doc: Upload files as assemblies instead of regular sequence
  type: boolean?
  inputBinding:
    prefix: --assemblies
- id: in_cs
  doc: "[CONFIG_CLIENT_SECRET], --config_client_secret [CONFIG_CLIENT_SECRET]\nOverride\
    \ \"client_secret\" in config file. This is for\nthe uploader client created in\
    \ IRIDA, used to handle\nthe data upload"
  type: boolean?
  inputBinding:
    prefix: -cs
- id: in_cu
  doc: "[CONFIG_USERNAME], --config_username [CONFIG_USERNAME]\nOverride \"username\"\
    \ in config file. This is your IRIDA\naccount username."
  type: boolean?
  inputBinding:
    prefix: -cu
- id: in_cp
  doc: "[CONFIG_PASSWORD], --config_password [CONFIG_PASSWORD]\nOverride \"password\"\
    \ in config file. This corresponds\nto your IRIDA account."
  type: boolean?
  inputBinding:
    prefix: -cp
- id: in_cb
  doc: "[CONFIG_BASE_URL], --config_base_url [CONFIG_BASE_URL]\nOverride \"base_url\"\
    \ in config file. The api url for\nyour irida instance (example:\nhttps://my.irida.server/api/)"
  type: boolean?
  inputBinding:
    prefix: -cb
- id: in_cr
  doc: "[CONFIG_PARSER], --config_parser [CONFIG_PARSER]\nOverride \"parser\" in config\
    \ file. Choose the type of\nsequencer data that is being uploaded. Supported\n\
    parsers: ['miseq', 'miseq_v26', 'miseq_v31',\n'miniseq', 'nextseq', 'iseq', 'directory']"
  type: boolean?
  inputBinding:
    prefix: -cr
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- irida-uploader
