class: CommandLineTool
id: extract_promoter_regions.py.cwl
inputs:
- id: in_gff_three
  doc: gene_list
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extract_promoter_regions.py
