class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bactopia_build.py.cwl
inputs:
- id: ext
  doc: 'Extension of the Conda environment files. Default: .yml'
  type: string
  inputBinding:
    prefix: --ext
- id: force
  doc: Force overwrite of existing Conda environments.
  type: boolean
  inputBinding:
    prefix: --force
- id: verbose
  doc: Print debug related text.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: silent
  doc: Only critical errors will be printed.
  type: boolean
  inputBinding:
    prefix: --silent
- id: bac_topia
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: build
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- bactopia-build.py
