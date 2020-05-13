class: CommandLineTool
id: HMMCtoCMC.cwl
inputs:
- id: numeric_version
  doc: Print just the version number
  type: boolean
  inputBinding:
    prefix: --numeric-version
- id: verbose
  doc: Loud verbosity
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Quiet verbosity
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- HMMCtoCMC
