class: CommandLineTool
id: ../../../pslCat.cwl
inputs:
- id: in_check
  doc: input.  Detects more errors but slower
  type: string
  inputBinding:
    prefix: -check
- id: in_no_head
  doc: psl header
  type: string
  inputBinding:
    prefix: -nohead
- id: in_dir
  doc: files are directories (concatenate all in dirs)
  type: boolean
  inputBinding:
    prefix: -dir
- id: in_out
  doc: put output to file rather than stdout
  type: File
  inputBinding:
    prefix: -out
- id: in_ext
  doc: =.xxx  limit files in directories to those with extension
  type: boolean
  inputBinding:
    prefix: -ext
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: put output to file rather than stdout
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- pslCat
