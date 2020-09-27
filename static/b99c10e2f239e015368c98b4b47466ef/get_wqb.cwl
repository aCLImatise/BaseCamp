class: CommandLineTool
id: get_wqb.cwl
inputs:
- id: in_dir
  doc: Directory with location of OpenDUck data
  type: Directory
  inputBinding:
    prefix: --dir
- id: in_ligand
  doc: Ligand in mol format
  type: string
  inputBinding:
    prefix: --ligand
- id: in_output
  doc: "Ligand output in mol forma, with wqb value\n"
  type: string
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_wqb
