class: CommandLineTool
id: chipseq_greylist.cwl
inputs:
- id: in_bootstraps
  doc: ''
  type: string?
  inputBinding:
    prefix: --bootstraps
- id: in_cut_off
  doc: ''
  type: string?
  inputBinding:
    prefix: --cutoff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chipseq-greylist
