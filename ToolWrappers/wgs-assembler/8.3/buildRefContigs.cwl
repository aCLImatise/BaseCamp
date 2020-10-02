class: CommandLineTool
id: buildRefContigs.cwl
inputs:
- id: in_m_mappingminoverlap_fragments
  doc: "-m mapping\n-minoverlap    fragments must overlap by at least this much\n\
    -U             build unitigs, for input to cgw\n-S             build scaffolds,\
    \ for input to terminator\n"
  type: string
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- buildRefContigs
