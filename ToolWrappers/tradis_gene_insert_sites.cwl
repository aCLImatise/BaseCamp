class: CommandLineTool
id: tradis_gene_insert_sites.cwl
inputs:
- id: in_trim_five
  doc: <trim insertion sites from 5' end of gene (optional, default = 0)>
  type: boolean
  inputBinding:
    prefix: -trim5
- id: in_trim_three
  doc: <trim insertion sites from 3' end of gene (optional, default = 0)>
  type: boolean
  inputBinding:
    prefix: -trim3
- id: in_joinedoutput_output_file
  doc: '|joined_output     <output a single file with all info. default = one file
    per input file>'
  type: boolean
  inputBinding:
    prefix: -j
- id: in_trad_is_gene_insert_sites
  doc: -o|output_suffix     <suffix to add to output files (optional, default = tradis_gene_insert_sites.csv)>
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tradis_gene_insert_sites
