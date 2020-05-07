class: CommandLineTool
id: makeTree.cwl
inputs:
- id: fast_a
  doc: Fasta input file. Mandatory option.
  type: boolean
  inputBinding:
    prefix: --fasta
- id: depth
  doc: 'of the tree structure. Mandatory option. '
  type: string
  inputBinding:
    prefix: --depth
- id: output
  doc: file. If the extension is not *gz, it is added. Mandatory option.
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- makeTree
