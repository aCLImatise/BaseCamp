class: CommandLineTool
id: pyprophet_merge.cwl
inputs:
- id: out
  doc: Merged OSW output file.  [required]
  type: File
  inputBinding:
    prefix: --out
- id: same_run
  doc: / --no-same_run  Assume input files are from same run (deletes run information).
  type: boolean
  inputBinding:
    prefix: --same_run
- id: template
  doc: Template OSW file.  [required]
  type: File
  inputBinding:
    prefix: --template
outputs: []
cwlVersion: v1.1
baseCommand:
- pyprophet
- merge
