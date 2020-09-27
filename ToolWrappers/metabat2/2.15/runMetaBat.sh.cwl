class: CommandLineTool
id: runMetaBat.sh.cwl
inputs:
- id: in_in_file
  doc: "-o --outFile\n-a --abdFile"
  type: boolean
  inputBinding:
    prefix: --inFile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- runMetaBat.sh
