class: CommandLineTool
id: planemo_normalize.cwl
inputs:
- id: expand_macros
  doc: Expand macros while normalizing tool XML - useful to see how macros are evaluated.
  type: boolean
  inputBinding:
    prefix: --expand_macros
- id: skip_reorder
  doc: Planemo will reorder top-level tool blocks according to tool development best
    practices as part of this command, this flag will disable that behavior.
  type: boolean
  inputBinding:
    prefix: --skip_reorder
- id: skip_re_indent
  doc: Planemo will reindent the XML according to tool development best practices
    as part of this command, this flag will disable that behavior.
  type: boolean
  inputBinding:
    prefix: --skip_reindent
outputs: []
cwlVersion: v1.1
baseCommand:
- planemo
- normalize
