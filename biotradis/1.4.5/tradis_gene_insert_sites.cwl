class: CommandLineTool
id: tradis_gene_insert_sites.cwl
inputs:
- id: o
  doc: '|output_suffix     <suffix to add to output files (optional, default = tradis_gene_insert_sites.csv)>'
  type: boolean
  inputBinding:
    prefix: -o
- id: trim5
  doc: <trim insertion sites from 5' end of gene (optional, default = 0)>
  type: boolean
  inputBinding:
    prefix: -trim5
- id: trim3
  doc: <trim insertion sites from 3' end of gene (optional, default = 0)>
  type: boolean
  inputBinding:
    prefix: -trim3
- id: j
  doc: '|joined_output     <output a single file with all info. default = one file
    per input file>'
  type: boolean
  inputBinding:
    prefix: -j
outputs: []
cwlVersion: v1.1
baseCommand:
- tradis_gene_insert_sites
