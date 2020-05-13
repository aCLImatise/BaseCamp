class: CommandLineTool
id: uropa2gtf.R.cwl
inputs:
- id: input
  doc: file or folder with input table(s) which should be reformatted to gtf file
    format
  type: boolean
  inputBinding:
    prefix: --input
- id: gtf_source
  doc: gtf_source
  type: boolean
  inputBinding:
    prefix: --gtf_source
- id: feature
  doc: feature
  type: boolean
  inputBinding:
    prefix: --feature
- id: threads
  doc: cores to be used for reformatting
  type: boolean
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- uropa2gtf.R
