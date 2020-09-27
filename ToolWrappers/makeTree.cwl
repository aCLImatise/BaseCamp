class: CommandLineTool
id: makeTree.cwl
inputs:
- id: in_fast_a
  doc: Fasta input file. Mandatory option.
  type: boolean
  inputBinding:
    prefix: --fasta
- id: in_depth
  doc: of the tree structure. Mandatory option.
  type: string
  inputBinding:
    prefix: --depth
- id: in_output
  doc: file. If the extension is not *gz, it is added. Mandatory option.
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- makeTree
