class: CommandLineTool
id: nullarbor_report.pl.cwl
inputs:
- id: in_name
  doc: Report name to put in the top heading
  type: boolean
  inputBinding:
    prefix: --name
- id: in_in_dir
  doc: Nullarbor result folder
  type: boolean
  inputBinding:
    prefix: --indir
- id: in_outdir
  doc: Folder to build report HTML in
  type: boolean
  inputBinding:
    prefix: --outdir
- id: in_preview
  doc: Quick summary after 'make preview'
  type: boolean
  inputBinding:
    prefix: --preview
- id: in_quiet
  doc: No output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: More output
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nullarbor-report.pl
