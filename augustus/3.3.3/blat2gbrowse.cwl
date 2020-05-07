class: CommandLineTool
id: blat2gbrowse.pl.cwl
inputs:
- id: old_format
  doc: output format for old GBrowse (before 2.0)
  type: boolean
  inputBinding:
    prefix: --oldformat
- id: est_names
  doc: output file with the names of the ESTs
  type: File
  inputBinding:
    prefix: --estnames
- id: source
  doc: identifyier in the source column
  type: string
  inputBinding:
    prefix: --source
outputs: []
cwlVersion: v1.1
baseCommand:
- blat2gbrowse.pl
