class: CommandLineTool
id: ngsArchiveLinker.pl.cwl
inputs:
- id: in_project_id
  doc: "[ARG]\nThe ID of the project to get data from. (required)"
  type: boolean
  inputBinding:
    prefix: --projectId
- id: in_output
  doc: "[ARG]\nA directory to output the collection of links. (Default: Current\n\
    working directory)"
  type: Directory
  inputBinding:
    prefix: --output
- id: in_config
  doc: "[ARG]\nThe location of the config file. Not required if --baseURL\noption\
    \ is used. (Default: $HOME/.irida/ngs-archive-linker.conf,\n/etc/irida/ngs-archive-linker.conf)"
  type: boolean
  inputBinding:
    prefix: --config
- id: in_baseurl
  doc: "[ARG]\nThe base URL for the NGS Archive REST API. Overrides config file\n\
    setting."
  type: boolean
  inputBinding:
    prefix: --baseURL
- id: in_sample
  doc: "[ARG]\nA sample id to get sequence files for. Not required. Multiple\nsamples\
    \ may be listed as -s 1 -s 2 -s 3..."
  type: boolean
  inputBinding:
    prefix: --sample
- id: in_ignore
  doc: Ignore creating links for files that already exist.
  type: boolean
  inputBinding:
    prefix: --ignore
- id: in_rename
  doc: "Rename existing files with _# suffix. Useful for topup runs with\nsimilar\
    \ filenames. NOTE: This option overrides the --ignore\noption."
  type: boolean
  inputBinding:
    prefix: --rename
- id: in_flat
  doc: "Create links or files in a flat directory under the project name\nrather than\
    \ in sample directories."
  type: boolean
  inputBinding:
    prefix: --flat
- id: in_username
  doc: "The username to use for API requests. Note: if this option is\nnot entered\
    \ it will be requested during running of the script."
  type: boolean
  inputBinding:
    prefix: --username
- id: in_password
  doc: "The password to use for API requests. Note: if this option is\nnot entered\
    \ it will be requested during running of the script."
  type: boolean
  inputBinding:
    prefix: --password
- id: in_download
  doc: "Option to download files from the REST API instead of\nsoftlinking. Note:\
    \ Files may be quite large. This option is not\nrecommended if you have access\
    \ to the sequencing filesystem."
  type: boolean
  inputBinding:
    prefix: --download
- id: in_verbose
  doc: Print verbose messages.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_d
  doc: ''
  type: Directory
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "[ARG]\nA directory to output the collection of links. (Default: Current\n\
    working directory)"
  type: Directory
  outputBinding:
    glob: $(inputs.in_output)
- id: out_d
  doc: ''
  type: Directory
  outputBinding:
    glob: $(inputs.in_d)
cwlVersion: v1.1
baseCommand:
- ngsArchiveLinker.pl
