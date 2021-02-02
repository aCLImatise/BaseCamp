class: CommandLineTool
id: ../../../pyensembl.cwl
inputs:
- id: in_overwrite
  doc: "Force download and indexing even if files already\nexist locally\n"
  type: boolean
  inputBinding:
    prefix: --overwrite
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyensembl
