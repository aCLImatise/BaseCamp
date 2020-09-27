class: CommandLineTool
id: cnvnator.cwl
inputs:
- id: in_lite
  doc: ''
  type: boolean
  inputBinding:
    prefix: -lite
- id: in_tree
  doc: ''
  type: boolean
  inputBinding:
    prefix: -tree
- id: in_chrom
  doc: ''
  type: long[]
  inputBinding:
    prefix: -chrom
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    prefix: -genome
- id: in_root
  doc: ''
  type: string
  inputBinding:
    prefix: -root
- id: in_file_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cnvnator
