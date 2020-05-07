class: CommandLineTool
id: stat.cwl
inputs:
- id: dereference
  doc: follow links
  type: boolean
  inputBinding:
    prefix: --dereference
- id: file_system
  doc: display file system status instead of file status
  type: boolean
  inputBinding:
    prefix: --file-system
- id: format
  doc: use the specified FORMAT instead of the default; output a newline after each
    use of FORMAT
  type: string
  inputBinding:
    prefix: --format
- id: printf
  doc: like --format, but interpret backslash escapes, and do not output a mandatory
    trailing newline; if you want a newline, include \n in FORMAT
  type: string
  inputBinding:
    prefix: --printf
- id: terse
  doc: print the information in terse form
  type: boolean
  inputBinding:
    prefix: --terse
outputs: []
cwlVersion: v1.1
baseCommand:
- stat
