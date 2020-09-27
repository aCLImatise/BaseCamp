class: CommandLineTool
id: singlem_seqs.cwl
inputs:
- id: in_alignment_type
  doc: '[--window_size INT]'
  type: long
  inputBinding:
    prefix: --alignment_type
- id: in_debug
  doc: output debug information
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: only output errors
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_full_help
  doc: display all help options
  type: boolean
  inputBinding:
    prefix: --full_help
- id: in_window_size
  doc: Number of nucleotides to use in continuous window
  type: long
  inputBinding:
    prefix: --window_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- singlem
- seqs
