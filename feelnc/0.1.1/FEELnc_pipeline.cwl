class: CommandLineTool
id: FEELnc_pipeline.sh.cwl
inputs:
- id: candidate
  doc: ''
  type: string
  inputBinding:
    prefix: --candidate
- id: reference
  doc: ''
  type: string
  inputBinding:
    prefix: --reference
- id: genome
  doc: ''
  type: string
  inputBinding:
    prefix: --genome
- id: out_name
  doc: ''
  type: string
  inputBinding:
    prefix: --outname
- id: outdir
  doc: ''
  type: string
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- FEELnc_pipeline.sh
