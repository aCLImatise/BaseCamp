class: CommandLineTool
id: align_info.2.10.3.cwl
inputs:
- id: db_path
  doc: Path to the database
  type: string
  inputBinding:
    position: 0
- id: all
  doc: 'print all information '
  type: boolean
  inputBinding:
    prefix: --all
- id: ref
  doc: 'print refseq information [default] '
  type: boolean
  inputBinding:
    prefix: --ref
- id: bam
  doc: 'print bam header (if present) '
  type: boolean
  inputBinding:
    prefix: --bam
- id: qual
  doc: 'print quality statistics (if present) '
  type: boolean
  inputBinding:
    prefix: --qual
- id: headers
  doc: 'print headers for output blocks '
  type: boolean
  inputBinding:
    prefix: --headers
- id: ngc
  doc: 'path to ngc file '
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
- align-info.2.10.3
