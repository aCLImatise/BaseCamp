#!/usr/bin/env cwl-runner

baseCommand:
- distruct.py
class: CommandLineTool
cwlVersion: v1.0
id: distruct.py
inputs:
- doc: (number of populations)
  id: k
  inputBinding:
    prefix: -K
  type: long
- doc: (/path/to/input/file; same as output flag passed to structure.py)
  id: input
  inputBinding:
    prefix: --input
  type: File
- doc: (/path/to/output/file)
  id: output
  inputBinding:
    prefix: --output
  type: File
- doc: (file with known categorical labels; optional)
  id: popfile
  inputBinding:
    prefix: --popfile
  type: File
- doc: (a title for the figure; optional)
  id: title
  inputBinding:
    prefix: --title
  type: string
