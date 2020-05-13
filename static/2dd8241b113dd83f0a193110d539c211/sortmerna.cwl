class: CommandLineTool
id: sortmerna.cwl
inputs:
- id: dbg_put_db
  doc: 'BOOL        Optional  '
  type: boolean
  inputBinding:
    prefix: --dbg_put_db
- id: cmd
  doc: BOOL        Optional  Launch an interactive session (command prompt)          False
  type: boolean
  inputBinding:
    prefix: --cmd
- id: task
  doc: 'INT         Optional  Processing Task:                                        4
    0 - align. Only perform alignment 1 - post-processing (log writing) 2 - generate
    reports 3 - align and post-process 4 - all'
  type: boolean
  inputBinding:
    prefix: --task
outputs: []
cwlVersion: v1.1
baseCommand:
- sortmerna
