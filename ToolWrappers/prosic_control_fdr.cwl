class: CommandLineTool
id: prosic_control_fdr.cwl
inputs:
- id: in_fdr
  doc: 'FDR to control for. [default: 0.05]'
  type: double
  inputBinding:
    prefix: --fdr
- id: in_event
  doc: Event to consider.
  type: string
  inputBinding:
    prefix: --event
- id: in_max_len
  doc: Maximum indel length to consider (exclusive).
  type: long
  inputBinding:
    prefix: --max-len
- id: in_min_len
  doc: Minimum indel length to consider.
  type: long
  inputBinding:
    prefix: --min-len
- id: in_var
  doc: Variant type to consider (SNV, INS, DEL).
  type: string
  inputBinding:
    prefix: --var
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prosic
- control-fdr
