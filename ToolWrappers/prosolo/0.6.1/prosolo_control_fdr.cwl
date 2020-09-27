class: CommandLineTool
id: prosolo_control_fdr.cwl
inputs:
- id: in_fdr
  doc: 'FDR to control for. [default: 0.05]'
  type: double
  inputBinding:
    prefix: --fdr
- id: in_events
  doc: "<STRING(,STRING)*>    Comma-separated list of Events to consider jointly (e.g.\
    \ `--events\nEvent1,Event2`)."
  type: boolean
  inputBinding:
    prefix: --events
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
- id: in_output
  doc: BCF file that contains the filtered results (if omitted, write to STDOUT).
  type: File
  inputBinding:
    prefix: --output
- id: in_var
  doc: Variant type to consider (SNV, INS, DEL).
  type: string
  inputBinding:
    prefix: --var
- id: in_bcf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prosolo
- control-fdr
