class: CommandLineTool
id: ../../../jimage.cwl
inputs:
- id: in_verbose
  doc: ', list will also print entry size and offset attributes.'
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_dir
  doc: Target directory for extract directive
  type: boolean
  inputBinding:
    prefix: --dir
- id: in_include
  doc: Pattern list for filtering entries.
  type: string
  inputBinding:
    prefix: --include
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- jimage
