class: CommandLineTool
id: pslCat.cwl
inputs:
- id: check
  doc: input.  Detects more errors but slower
  type: string
  inputBinding:
    prefix: -check
- id: no_head
  doc: psl header
  type: string
  inputBinding:
    prefix: -nohead
- id: dir
  doc: files are directories (concatenate all in dirs)
  type: boolean
  inputBinding:
    prefix: -dir
- id: out
  doc: put output to file rather than stdout
  type: File
  inputBinding:
    prefix: -out
- id: ext
  doc: =.xxx  limit files in directories to those with extension
  type: boolean
  inputBinding:
    prefix: -ext
outputs: []
cwlVersion: v1.1
baseCommand:
- pslCat
