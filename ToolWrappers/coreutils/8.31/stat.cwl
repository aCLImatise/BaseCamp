class: CommandLineTool
id: stat.cwl
inputs:
- id: in_dereference
  doc: follow links
  type: boolean?
  inputBinding:
    prefix: --dereference
- id: in_file_system
  doc: display file system status instead of file status
  type: boolean?
  inputBinding:
    prefix: --file-system
- id: in_format
  doc: "use the specified FORMAT instead of the default;\noutput a newline after each\
    \ use of FORMAT"
  type: string?
  inputBinding:
    prefix: --format
- id: in_printf
  doc: "like --format, but interpret backslash escapes,\nand do not output a mandatory\
    \ trailing newline;\nif you want a newline, include \\n in FORMAT"
  type: string?
  inputBinding:
    prefix: --printf
- id: in_terse
  doc: print the information in terse form
  type: boolean?
  inputBinding:
    prefix: --terse
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- stat
