class: CommandLineTool
id: filter_stage_2.prl.cwl
inputs:
- id: cat
  doc: The RepeatMasker output file. It can either be a .cat file or a .out file,
    but a .out file is preferred.
  type: boolean
  inputBinding:
    prefix: --cat
- id: thresh
  doc: The number of times a sequence must appear for it to be reported.
  type: boolean
  inputBinding:
    prefix: --thresh
outputs: []
cwlVersion: v1.1
baseCommand:
- filter-stage-2.prl
