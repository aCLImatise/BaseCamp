class: CommandLineTool
id: emirge_rename_fasta.py.cwl
inputs:
- id: prob_min
  doc: 'Only include sequences in output with prior probability above PROB_MIN (Default:
    include all sequences)'
  type: string
  inputBinding:
    prefix: --prob_min
- id: record_prefix
  doc: Add the specified prefix to each fasta record title
  type: string
  inputBinding:
    prefix: --record_prefix
- id: no_n
  doc: "Don't change bases with no read support to N. Caution: these bases are not\
    \ supported by reads in the input data, but will usually be from a closely related\
    \ sequence."
  type: boolean
  inputBinding:
    prefix: --no_N
- id: no_trim_n
  doc: Don't trim off N bases with no read support from ends of sequences.  Ignored
    if --no_N is also passed
  type: boolean
  inputBinding:
    prefix: --no_trim_N
outputs: []
cwlVersion: v1.1
baseCommand:
- emirge_rename_fasta.py
