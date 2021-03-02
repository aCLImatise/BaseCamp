class: CommandLineTool
id: mafft_nwns.cwl
inputs:
- id: in_op
  doc: '# :         Gap opening penalty, default: 1.53'
  type: boolean?
  inputBinding:
    prefix: --op
- id: in_ep
  doc: '# :         Offset (works like gap extension penalty), default: 0.0'
  type: boolean?
  inputBinding:
    prefix: --ep
- id: in_max_iterate
  doc: '# : Maximum number of iterative refinement, default: 0'
  type: boolean?
  inputBinding:
    prefix: --maxiterate
- id: in_clustal_out
  doc: ':   Output: clustal format, default: fasta'
  type: boolean?
  inputBinding:
    prefix: --clustalout
- id: in_reorder
  doc: ':      Outorder: aligned, default: input order'
  type: boolean?
  inputBinding:
    prefix: --reorder
- id: in_quiet
  doc: ':        Do not report progress'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_thread
  doc: '# :     Number of threads (if unsure, --thread -1)'
  type: boolean?
  inputBinding:
    prefix: --thread
- id: in_dash
  doc: ':         Add structural information (Rozewicki et al, submitted)'
  type: boolean?
  inputBinding:
    prefix: --dash
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mafft-nwns
