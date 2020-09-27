class: CommandLineTool
id: ssu_esl_alimap_msafile1.cwl
inputs:
- id: in_msa_file_two
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- ssu-esl-alimap
- msafile1
