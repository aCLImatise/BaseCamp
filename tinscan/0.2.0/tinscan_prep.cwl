class: CommandLineTool
id: tinscan_prep.cwl
inputs:
- id: target
  doc: Multifasta containing A genome.
  type: string
  inputBinding:
    prefix: --target
- id: query
  doc: Multifasta containing B genome.
  type: string
  inputBinding:
    prefix: --query
- id: a_dir
  doc: A genome sub-directory within outdir
  type: string
  inputBinding:
    prefix: --adir
- id: b_dir
  doc: B genome sub-directory within outdir
  type: string
  inputBinding:
    prefix: --bdir
- id: outdir
  doc: 'Write split directories within this directory. (Default: cwd)'
  type: string
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- tinscan-prep
