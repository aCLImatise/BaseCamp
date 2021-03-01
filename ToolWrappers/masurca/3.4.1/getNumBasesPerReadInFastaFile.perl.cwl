class: CommandLineTool
id: getNumBasesPerReadInFastaFile.perl.cwl
inputs:
- id: in_zcat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- getNumBasesPerReadInFastaFile.perl
