class: CommandLineTool
id: ../../../runMetaBat.sh.cwl
inputs:
- id: in_in_file
  doc: ''
  type: boolean
  inputBinding:
    prefix: --inFile
- id: in_outfile
  doc: ''
  type: boolean
  inputBinding:
    prefix: --outFile
- id: in_abd_file
  doc: ''
  type: boolean
  inputBinding:
    prefix: --abdFile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- runMetaBat.sh
