class: CommandLineTool
id: rgt_tools.py_ensembl2symbol.cwl
inputs:
- id: in_input_gene_list
  doc: Input gene list
  type: string?
  inputBinding:
    prefix: -i
- id: in_output_gene_list
  doc: Output gene list
  type: string?
  inputBinding:
    prefix: -o
- id: in_organism
  doc: Define the organism
  type: boolean?
  inputBinding:
    prefix: -organism
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rgt-tools.py
- ensembl2symbol
