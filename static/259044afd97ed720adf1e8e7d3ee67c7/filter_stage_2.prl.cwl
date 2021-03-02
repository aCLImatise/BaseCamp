class: CommandLineTool
id: filter_stage_2.prl.cwl
inputs:
- id: in_cat
  doc: "The RepeatMasker output file. It can either be a .cat file or a .out\nfile,\
    \ but a .out file is preferred."
  type: File?
  inputBinding:
    prefix: --cat
- id: in_thresh
  doc: The number of times a sequence must appear for it to be reported.
  type: boolean?
  inputBinding:
    prefix: --thresh
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_cat
  doc: "The RepeatMasker output file. It can either be a .cat file or a .out\nfile,\
    \ but a .out file is preferred."
  type: File?
  outputBinding:
    glob: $(inputs.in_cat)
hints: []
cwlVersion: v1.1
baseCommand:
- filter-stage-2.prl
