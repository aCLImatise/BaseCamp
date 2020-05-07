class: CommandLineTool
id: vdb_decrypt.2.cwl
inputs:
- id: source_file
  doc: file to decrypt
  type: string
  inputBinding:
    position: 0
- id: destination_file
  doc: name of resulting file
  type: string
  inputBinding:
    position: 1
- id: destination_directory
  doc: directory of resulting file
  type: string
  inputBinding:
    position: 2
- id: directory
  doc: directory to decrypt
  type: Directory
  inputBinding:
    position: 3
- id: force
  doc: 'Force overwrite of existing files '
  type: boolean
  inputBinding:
    prefix: --force
- id: decrypt_sra_files
  doc: 'decrypt sra archives [NOT RECOMMENDED] '
  type: boolean
  inputBinding:
    prefix: --decrypt-sra-files
- id: ngc
  doc: 'PATH to ngc file '
  type: File
  inputBinding:
    prefix: --ngc
- id: log_level
  doc: 'Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug)
    or  (0-6) Current/default is warn '
  type: string
  inputBinding:
    prefix: --log-level
- id: verbose
  doc: 'Increase the verbosity of the program  status messages. Use multiple times
    for more  verbosity. Negates quiet. '
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: 'Turn off all status messages for the  program. Negated by verbose. '
  type: boolean
  inputBinding:
    prefix: --quiet
- id: option_file
  doc: 'Read more options and parameters from the  file. '
  type: File
  inputBinding:
    prefix: --option-file
outputs: []
cwlVersion: v1.1
baseCommand:
- vdb-decrypt.2
