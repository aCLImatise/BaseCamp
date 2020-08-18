class: CommandLineTool
id: ../../../sortmerna.cwl
inputs:
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
- id: ref
  doc: ''
  type: File
  inputBinding:
    prefix: --ref
- id: reads
  doc: ''
  type: string
  inputBinding:
    prefix: --reads
outputs: []
cwlVersion: v1.1
baseCommand:
- sortmerna
