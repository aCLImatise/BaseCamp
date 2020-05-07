class: CommandLineTool
id: ngsArchiveLinker.pl.cwl
inputs:
- id: ignore
  doc: Ignore creating links for files that already exist.
  type: boolean
  inputBinding:
    prefix: --ignore
- id: rename
  doc: 'Rename existing files with _# suffix. Useful for topup runs with similar filenames.
    NOTE: This option overrides the --ignore option.'
  type: boolean
  inputBinding:
    prefix: --rename
- id: flat
  doc: Create links or files in a flat directory under the project name rather than
    in sample directories.
  type: boolean
  inputBinding:
    prefix: --flat
- id: username
  doc: 'The username to use for API requests. Note: if this option is not entered
    it will be requested during running of the script.'
  type: boolean
  inputBinding:
    prefix: --username
- id: password
  doc: 'The password to use for API requests. Note: if this option is not entered
    it will be requested during running of the script.'
  type: boolean
  inputBinding:
    prefix: --password
- id: download
  doc: 'Option to download files from the REST API instead of softlinking. Note: Files
    may be quite large. This option is not recommended if you have access to the sequencing
    filesystem.'
  type: boolean
  inputBinding:
    prefix: --download
- id: verbose
  doc: Print verbose messages.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- ngsArchiveLinker.pl
