class: CommandLineTool
id: ../../../seqstat.cwl
inputs:
- id: report_persequence_info
  doc: ': report per-sequence info, not just a summary'
  type: boolean
  inputBinding:
    prefix: -a
- id: gc_comp
  doc: ': with -a, include GC composition in report (DNA/RNA only)'
  type: boolean
  inputBinding:
    prefix: --gccomp
- id: in_format
  doc: ': specify sequence file format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: quiet
  doc: ': suppress verbose header (used in regression testing)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
- id: seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- seqstat
