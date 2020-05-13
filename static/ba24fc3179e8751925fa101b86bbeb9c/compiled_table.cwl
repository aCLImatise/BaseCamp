class: CommandLineTool
id: compiled_table.py.cwl
inputs:
- id: tables
  doc: tables to compile
  type: string[]
  inputBinding:
    prefix: --tables
- id: reference
  doc: gbk file of reference
  type: string
  inputBinding:
    prefix: --reference
- id: query
  doc: fasta file for insertion sequence query for compilation
  type: string
  inputBinding:
    prefix: --query
- id: gap
  doc: distance between regions to call overlapping, default is 0
  type: string
  inputBinding:
    prefix: --gap
- id: cds
  doc: qualifier containing gene information (default product). Also note that all
    CDS features MUST have a locus_tag
  type: string
  inputBinding:
    prefix: --cds
- id: trna
  doc: qualifier containing gene information (default product). Also note that all
    tRNA features MUST have a locus_tag
  type: string
  inputBinding:
    prefix: --trna
- id: rrna
  doc: qualifier containing gene information (default product). Also note that all
    rRNA features MUST have a locus_tag
  type: string
  inputBinding:
    prefix: --rrna
- id: imprecise
  doc: Binary value for imprecise (*) hit (can be 1, 0 or 0.5), default is 1
  type: string
  inputBinding:
    prefix: --imprecise
- id: unconfident
  doc: Binary value for questionable (?) hit (can be 1, 0 or 0.5), default is 0
  type: string
  inputBinding:
    prefix: --unconfident
- id: out_prefix
  doc: Prefix for output file
  type: string
  inputBinding:
    prefix: --out_prefix
outputs: []
cwlVersion: v1.1
baseCommand:
- compiled_table.py
