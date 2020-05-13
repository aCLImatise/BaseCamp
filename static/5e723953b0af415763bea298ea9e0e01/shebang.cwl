class: CommandLineTool
id: shebang.py.cwl
inputs:
- id: path
  doc: The path where are FusionCatcher's Python scripts.
  type: File
  inputBinding:
    prefix: --path
- id: shebang
  doc: The new shebang for Python scripts belonging to FusionCatcher.
  type: string
  inputBinding:
    prefix: --shebang
- id: author
  doc: 'Daniel Nicorici, E-mail: Daniel.Nicorici@gmail.com'
  type: string
  inputBinding:
    prefix: --author
outputs: []
cwlVersion: v1.1
baseCommand:
- shebang.py
