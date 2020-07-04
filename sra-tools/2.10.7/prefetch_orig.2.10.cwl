class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/prefetch_orig.2.10.7.cwl
inputs:
- id: ascp_options
  doc: 'Arbitrary options to pass to ascp command  line. '
  type: string
  inputBinding:
    prefix: --ascp-options
- id: output_file
  doc: 'Write file to FILE when downloading  single file. '
  type: File
  inputBinding:
    prefix: --output-file
- id: output_directory
  doc: 'Save files to DIRECTORY/ '
  type: Directory
  inputBinding:
    prefix: --output-directory
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
- id: sra_accession
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- prefetch-orig.2.10.7
