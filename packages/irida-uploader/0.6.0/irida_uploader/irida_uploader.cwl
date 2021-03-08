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
- id: in_continue_partial
  doc: "Uploader will continue an existing upload run when\nupload status is partial."
  type: boolean?
  inputBinding:
    prefix: --continue_partial
- id: in_batch
  doc: "Uploader will expect a directory containing a\nsequencing run directories,\
    \ and upload in batch. The\nlist of runs is generated at start time (Runs added\
    \ to\ndirectory mid upload will not be uploaded)."
  type: boolean?
  inputBinding:
    prefix: --batch
- id: in_upload_mode
  doc: "Choose which upload mode to use. Supported modes:\n['default', 'assemblies',\
    \ 'fast5']"
  type: long?
  inputBinding:
    prefix: --upload_mode
- id: in_ci
  doc: "[CONFIG_CLIENT_ID], --config_client_id [CONFIG_CLIENT_ID]\nOverride the \"\
    client_id\" field in config file. This is\nfor the uploader client created in\
    \ IRIDA, used to\nhandle the data upload"
  type: boolean?
  inputBinding:
    prefix: -ci
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
    parsers: ['miseq', 'miseq_v26', 'miseq_v31',\n'miniseq', 'nextseq', 'nextseq2k_nml',\
    \ 'iseq',\n'directory', 'nanopore_assemblies']"
  type: boolean?
  inputBinding:
    prefix: -cr
- id: in_readonly
  doc: "Upload in Read Only mode, does not write status or log\nfile to run directory."
  type: boolean?
  inputBinding:
    prefix: --readonly
- id: in_cd
  doc: "[DELAY], --delay [DELAY]\nAccepts an Integer for minutes to delay. When set,\
    \ new\nruns will have their status set to delayed. When\nuploading a run with\
    \ the delayed status, the run will\nonly upload if the given amount of minutes\
    \ has passes\nsince it was set to delayed. Default = 0: When set to\n0, runs will\
    \ not be given delayed status."
  type: boolean?
  inputBinding:
    prefix: -cd
- id: in_ct
  doc: "[CONFIG_TIMEOUT], --config_timeout [CONFIG_TIMEOUT]\nAccepts an Integer for\
    \ the expected transfer time in\nseconds per MB. Default is 10 second for every\
    \ MB of\ndata to transfer (100kb/s). Increasing this number can\nreduce timeout\
    \ errors when your transfer speed is very\nslow."
  type: boolean?
  inputBinding:
    prefix: -ct
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/irida-uploader:0.6.0--py36_0
cwlVersion: v1.1
baseCommand:
- irida-uploader
