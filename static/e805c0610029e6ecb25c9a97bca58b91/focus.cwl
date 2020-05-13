class: CommandLineTool
id: focus.cwl
inputs:
- id: query
  doc: Path to directory with FAST(A/Q) files
  type: string
  inputBinding:
    prefix: --query
- id: output_directory
  doc: Path to output files
  type: string
  inputBinding:
    prefix: --output_directory
- id: km_er_size
  doc: 'K-mer size (6 or 7) (Default: 6)'
  type: string
  inputBinding:
    prefix: --kmer_size
- id: alternate_directory
  doc: Alternate directory for your databases
  type: string
  inputBinding:
    prefix: --alternate_directory
- id: output_prefix
  doc: 'Output prefix (Default: output)'
  type: string
  inputBinding:
    prefix: --output_prefix
- id: threads
  doc: 'Number Threads used in the k-mer counting (Default: 4)'
  type: string
  inputBinding:
    prefix: --threads
- id: list_output
  doc: Output results as a list
  type: boolean
  inputBinding:
    prefix: --list_output
- id: log
  doc: 'Path to log file (Default: STDOUT).'
  type: string
  inputBinding:
    prefix: --log
outputs: []
cwlVersion: v1.1
baseCommand:
- focus
