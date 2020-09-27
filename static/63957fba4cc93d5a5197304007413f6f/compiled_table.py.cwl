class: CommandLineTool
id: compiled_table.py.cwl
inputs:
- id: in_tables
  doc: tables to compile
  type: string[]
  inputBinding:
    prefix: --tables
- id: in_reference
  doc: gbk file of reference
  type: File
  inputBinding:
    prefix: --reference
- id: in_query
  doc: fasta file for insertion sequence query for
  type: File
  inputBinding:
    prefix: --query
- id: in_cds
  doc: "qualifier containing gene information (default\nproduct). Also note that all\
    \ CDS features MUST have a\nlocus_tag"
  type: string
  inputBinding:
    prefix: --cds
- id: in_trna
  doc: "qualifier containing gene information (default\nproduct). Also note that all\
    \ tRNA features MUST have a\nlocus_tag"
  type: string
  inputBinding:
    prefix: --trna
- id: in_rrna
  doc: "qualifier containing gene information (default\nproduct). Also note that all\
    \ rRNA features MUST have a\nlocus_tag"
  type: string
  inputBinding:
    prefix: --rrna
- id: in_imprecise
  doc: "Binary value for imprecise (*) hit (can be 1, 0 or\n0.5), default is 1"
  type: double
  inputBinding:
    prefix: --imprecise
- id: in_unconfident
  doc: "Binary value for questionable (?) hit (can be 1, 0 or\n0.5), default is 0"
  type: double
  inputBinding:
    prefix: --unconfident
- id: in_out_prefix
  doc: "Prefix for output file\n"
  type: File
  inputBinding:
    prefix: --out_prefix
- id: in_compilation
  doc: --gap GAP             distance between regions to call overlapping, default
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_prefix
  doc: "Prefix for output file\n"
  type: File
  outputBinding:
    glob: $(inputs.in_out_prefix)
cwlVersion: v1.1
baseCommand:
- compiled_table.py
