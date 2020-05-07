class: CommandLineTool
id: nullarbor_report.pl.cwl
inputs:
- id: name
  doc: Report name to put in the top heading
  type: boolean
  inputBinding:
    prefix: --name
- id: in_dir
  doc: Nullarbor result folder
  type: boolean
  inputBinding:
    prefix: --indir
- id: outdir
  doc: Folder to build report HTML in
  type: boolean
  inputBinding:
    prefix: --outdir
- id: preview
  doc: Quick summary after 'make preview'
  type: boolean
  inputBinding:
    prefix: --preview
- id: quiet
  doc: No output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: verbose
  doc: More output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- nullarbor-report.pl
