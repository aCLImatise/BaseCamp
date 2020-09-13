class: CommandLineTool
id: ../../../mafSpeciesList.cwl
inputs:
- id: in_ignore_first
  doc: "- If true ignore first species in each maf, useful when this\nis a mafFrags\
    \ result that puts gene id there.\n"
  type: boolean
  inputBinding:
    prefix: -ignoreFirst
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- mafSpeciesList
