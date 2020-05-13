class: CommandLineTool
id: prosolo_control_fdr.cwl
inputs:
- id: fdr
  doc: 'FDR to control for. [default: 0.05]'
  type: string
  inputBinding:
    prefix: --fdr
- id: events
  doc: <STRING(,STRING)*>    Comma-separated list of Events to consider jointly (e.g.
    `--events Event1,Event2`).
  type: boolean
  inputBinding:
    prefix: --events
- id: max_len
  doc: Maximum indel length to consider (exclusive).
  type: long
  inputBinding:
    prefix: --max-len
- id: min_len
  doc: Minimum indel length to consider.
  type: long
  inputBinding:
    prefix: --min-len
- id: output
  doc: BCF file that contains the filtered results (if omitted, write to STDOUT).
  type: File
  inputBinding:
    prefix: --output
- id: var
  doc: Variant type to consider (SNV, INS, DEL).
  type: string
  inputBinding:
    prefix: --var
outputs: []
cwlVersion: v1.1
baseCommand:
- prosolo
- control-fdr
