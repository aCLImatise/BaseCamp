class: CommandLineTool
id: buildSNPDB.pl.cwl
inputs:
- id: in_in_directory_name
  doc: in directory name
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_reference_file
  doc: reference file
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_header_list
  doc: header list
  type: boolean?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- buildSNPDB.pl
