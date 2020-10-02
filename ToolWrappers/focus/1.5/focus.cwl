class: CommandLineTool
id: focus.cwl
inputs:
- id: in_query
  doc: Path to directory with FAST(A/Q) files
  type: File
  inputBinding:
    prefix: --query
- id: in_output_directory
  doc: Path to output files
  type: Directory
  inputBinding:
    prefix: --output_directory
- id: in_km_er_size
  doc: 'K-mer size (6 or 7) (Default: 6)'
  type: long
  inputBinding:
    prefix: --kmer_size
- id: in_alternate_directory
  doc: Alternate directory for your databases
  type: Directory
  inputBinding:
    prefix: --alternate_directory
- id: in_output_prefix
  doc: 'Output prefix (Default: output)'
  type: string
  inputBinding:
    prefix: --output_prefix
- id: in_threads
  doc: 'Number Threads used in the k-mer counting (Default: 4)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_list_output
  doc: Output results as a list
  type: boolean
  inputBinding:
    prefix: --list_output
- id: in_log
  doc: 'Path to log file (Default: STDOUT).'
  type: File
  inputBinding:
    prefix: --log
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Path to output files
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- focus
