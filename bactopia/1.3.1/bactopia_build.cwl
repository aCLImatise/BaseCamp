class: CommandLineTool
id: bactopia_build.py.cwl
inputs:
- id: str
  doc: Directory containing Conda environment files to build.
  type: string
  inputBinding:
    position: 0
- id: str
  doc: Directory to install Conda environments to.
  type: string
  inputBinding:
    position: 1
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
outputs: []
cwlVersion: v1.1
baseCommand:
- bactopia-build.py
