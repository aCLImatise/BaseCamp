class: CommandLineTool
id: filter_contigs.cwl
inputs:
- id: in_min_contig
  doc: (=100)            filter out reads containing 'N'
  type: long
  inputBinding:
    prefix: --min_contig
- id: in_fq_two_fa
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_tmp_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_tmp_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter_contigs
