class: CommandLineTool
id: validate_reads_blat.cwl
inputs:
- id: in_min_contig
  doc: (=100)            minimum contigs
  type: long?
  inputBinding:
    prefix: --min_contig
- id: in_similar
  doc: (=0.95)              similarity
  type: double?
  inputBinding:
    prefix: --similar
- id: in_complete_rate
  doc: (=0.8)         completeness
  type: double?
  inputBinding:
    prefix: --complete_rate
- id: in_is_local
  doc: local align
  type: boolean?
  inputBinding:
    prefix: --is_local
- id: in_validate_contigs_blat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_contigs_dot_fa_dot
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- validate_reads_blat
