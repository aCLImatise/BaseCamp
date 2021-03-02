class: CommandLineTool
id: ariba_pubmlstget.cwl
inputs:
- id: in_verbose
  doc: Be verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_species
  doc: Species to download. Put it in quotes
  type: string
  inputBinding:
    position: 0
- id: in_outdir
  doc: Name of output directory to be made (must not already exist)
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ariba
- pubmlstget
