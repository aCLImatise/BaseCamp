#!/usr/bin/env cwl-runner

baseCommand:
- shebang.py
class: CommandLineTool
cwlVersion: v1.0
id: shebang.py
inputs:
- doc: The path where are FusionCatcher's Python scripts.
  id: path
  inputBinding:
    prefix: --path
  type: File
- doc: The new shebang for Python scripts belonging to FusionCatcher.
  id: shebang
  inputBinding:
    prefix: --shebang
  type: string
- doc: 'Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com'
  id: author
  inputBinding:
    prefix: --author
  type: string
