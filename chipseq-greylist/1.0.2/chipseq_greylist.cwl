class: CommandLineTool
id: ../../../chipseq_greylist.cwl
inputs:
- id: in_cut_off
  doc: ''
  type: string
  inputBinding:
    prefix: --cutoff
- id: in_bootstraps
  doc: ''
  type: string
  inputBinding:
    prefix: --bootstraps
- id: in_quiet
  doc: ''
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_outdir
  doc: ''
  type: string
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- chipseq-greylist
