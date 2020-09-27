class: CommandLineTool
id: nw_indent.cwl
inputs:
- id: in_compact_remove_indentation
  doc: ': compact - remove indentation'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_use_warning_usinganything
  doc: ": use 'text' instead of the default '  '. WARNING: using\nanything else than\
    \ whitespace is likely to result in output that\nis not valid Newick (which may\
    \ or may not be a problem).\nIgnored with '-c'."
  type: string
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- nw_indent
