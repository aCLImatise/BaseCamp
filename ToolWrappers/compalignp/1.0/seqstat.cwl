class: CommandLineTool
id: seqstat.cwl
inputs:
- id: in_report_persequence_info
  doc: ': report per-sequence info, not just a summary'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_gc_comp
  doc: ': with -a, include GC composition in report (DNA/RNA only)'
  type: boolean?
  inputBinding:
    prefix: --gccomp
- id: in_in_format
  doc: ': specify sequence file format <s>'
  type: File?
  inputBinding:
    prefix: --informat
- id: in_quiet
  doc: ': suppress verbose header (used in regression testing)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_seq_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seqstat
