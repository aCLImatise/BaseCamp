class: CommandLineTool
id: planemo_normalize.cwl
inputs:
- id: in_expand_macros
  doc: "Expand macros while normalizing tool XML - useful to see\nhow macros are evaluated."
  type: boolean
  inputBinding:
    prefix: --expand_macros
- id: in_skip_reorder
  doc: "Planemo will reorder top-level tool blocks according to\ntool development\
    \ best practices as part of this command,\nthis flag will disable that behavior."
  type: boolean
  inputBinding:
    prefix: --skip_reorder
- id: in_skip_re_indent
  doc: "Planemo will reindent the XML according to tool development\nbest practices\
    \ as part of this command, this flag will\ndisable that behavior."
  type: boolean
  inputBinding:
    prefix: --skip_reindent
- id: in_tool_path
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
- planemo
- normalize
