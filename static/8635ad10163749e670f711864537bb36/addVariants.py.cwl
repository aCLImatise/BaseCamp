class: CommandLineTool
id: ../../../addVariants.py.cwl
inputs:
- id: in_variants
  doc: "JSON file with variant calls to use instead of calls in\ninput graph"
  type: File
  inputBinding:
    prefix: --variants
- id: in_verbose
  doc: More logging; May be given twice for even more logging
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- addVariants.py
