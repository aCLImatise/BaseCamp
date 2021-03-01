class: CommandLineTool
id: amos2ace.cwl
inputs:
- id: in_location_of_chromatograms
  doc: Location of the chromatograms
  type: string?
  inputBinding:
    prefix: -c
- id: in_location_phd_directory
  doc: Location of the PHD directory
  type: Directory?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- amos2ace
