class: CommandLineTool
id: uropa2gtf.R.cwl
inputs:
- id: in_input
  doc: file or folder with input table(s) which should be reformatted to gtf file
    format
  type: boolean
  inputBinding:
    prefix: --input
- id: in_feature
  doc: feature
  type: boolean
  inputBinding:
    prefix: --feature
- id: in_threads
  doc: cores to be used for reformatting
  type: boolean
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- uropa2gtf.R
