class: CommandLineTool
id: starchstrip.cwl
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- starchstrip
