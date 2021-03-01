class: CommandLineTool
id: finalTrim.cwl
inputs:
- id: in_allow_percent_error
  doc: allow 'erate' percent error
  type: string?
  inputBinding:
    prefix: -e
- id: in_allow
  doc: allow 'elimit' errors (only used in 'largestCovered')
  type: string?
  inputBinding:
    prefix: -E
- id: in_ol
  doc: for 'largest covered', the minimum evidence overlap length
  type: boolean?
  inputBinding:
    prefix: -ol
- id: in_oc
  doc: for 'largest covered', the minimum evidence overlap coverage
  type: boolean?
  inputBinding:
    prefix: -oc
- id: in_modify_reads_gkpstore
  doc: do not modify reads in gkpStore
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_limit_processing_end
  doc: limit processing to only reads from bgn to end (inclusive)
  type: string?
  inputBinding:
    prefix: -t
- id: in_var_6
  doc: ''
  type: string?
  inputBinding:
    prefix: -o
- id: in_var_7
  doc: ''
  type: string?
  inputBinding:
    prefix: -O
- id: in_g
  doc: ''
  type: string?
  inputBinding:
    prefix: -G
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- finalTrim
