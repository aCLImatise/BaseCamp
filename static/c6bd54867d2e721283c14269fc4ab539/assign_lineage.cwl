class: CommandLineTool
id: ../../../assign_lineage.py.cwl
inputs:
- id: format
  doc: what format is the tree file. This is passed to dendropy. default is 'nexus'
  type: string
  inputBinding:
    prefix: --format
- id: collapse_to_poly_to_mies
  doc: A optional flag to collapse branches with length <= the input before running
    the rule.
  type: string
  inputBinding:
    prefix: --collapse_to_polytomies
- id: input
  doc: The input tree file. Format can be specified with the format flag.
  type: string
  inputBinding:
    prefix: --input
- id: _output_output
  doc: '*, --output output.* The output file'
  type: string
  inputBinding:
    prefix: -o
- id: index
  doc: The index of the trait to reconstruct when the tip label is split by the separator
  type: string
  inputBinding:
    prefix: --index
- id: separator
  doc: optional separator used to get trait
  type: string
  inputBinding:
    prefix: --separator
- id: tax_on
  doc: The tip label to get
  type: string
  inputBinding:
    prefix: --taxon
outputs: []
cwlVersion: v1.1
baseCommand:
- assign_lineage.py
