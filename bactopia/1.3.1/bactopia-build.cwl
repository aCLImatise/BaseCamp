#!/usr/bin/env cwl-runner

baseCommand:
- bactopia-build.py
class: CommandLineTool
cwlVersion: v1.0
id: bactopia-build.py
inputs:
- doc: Directory containing Conda environment files to build.
  id: str
  inputBinding:
    position: 0
  type: string
- doc: Directory to install Conda environments to.
  id: str
  inputBinding:
    position: 1
  type: string
- doc: 'Extension of the Conda environment files. Default: .yml'
  id: ext
  inputBinding:
    prefix: --ext
  type: string
- doc: Force overwrite of existing Conda environments.
  id: force
  inputBinding:
    prefix: --force
  type: boolean
- doc: Print debug related text.
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: Only critical errors will be printed.
  id: silent
  inputBinding:
    prefix: --silent
  type: boolean
