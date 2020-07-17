class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/create_top.py.cwl
inputs:
- id: input_pdb_file
  doc: Input PDB file
  type: string
  inputBinding:
    prefix: -f
- id: output_directory
  doc: Output directory
  type: string
  inputBinding:
    prefix: -o
- id: v_site
  doc: Use virtual site for hydrogens
  type: boolean
  inputBinding:
    prefix: -vsite
outputs: []
cwlVersion: v1.1
baseCommand:
- create_top.py
