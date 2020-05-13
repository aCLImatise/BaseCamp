class: CommandLineTool
id: pubmlst_download.cwl
inputs:
- id: scheme_name
  doc: scheme name
  type: string
  inputBinding:
    prefix: --scheme_name
- id: scheme_id
  doc: scheme id
  type: string
  inputBinding:
    prefix: --scheme_id
- id: outdir
  doc: output directory
  type: string
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- pubmlst_download
