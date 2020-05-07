class: CommandLineTool
id: get_wqb.cwl
inputs:
- id: dir
  doc: Directory with location of OpenDUck data
  type: string
  inputBinding:
    prefix: --dir
- id: ligand
  doc: Ligand in mol format
  type: string
  inputBinding:
    prefix: --ligand
- id: output
  doc: Ligand output in mol forma, with wqb value
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- get_wqb
