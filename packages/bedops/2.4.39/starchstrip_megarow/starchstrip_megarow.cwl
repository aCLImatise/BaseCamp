class: CommandLineTool
id: starchstrip_megarow.cwl
inputs:
- id: in_include
  doc: Include specified chromosomes from <starch-file>.
  type: File
  inputBinding:
    prefix: --include
- id: in_exclude
  doc: Exclude specified chromosomes from <starch-file>.
  type: File
  inputBinding:
    prefix: --exclude
- id: in_starch_strip
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- starchstrip-megarow
