class: CommandLineTool
id: ../../../buildSNPDB.pl.cwl
inputs:
- id: in_directory_name
  doc: in directory name
  type: boolean
  inputBinding:
    prefix: -i
- id: reference_file
  doc: reference file
  type: boolean
  inputBinding:
    prefix: -r
- id: header_list
  doc: header list
  type: boolean
  inputBinding:
    prefix: -l
outputs: []
cwlVersion: v1.1
baseCommand:
- buildSNPDB.pl
