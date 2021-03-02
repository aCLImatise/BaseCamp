class: CommandLineTool
id: cnvkit.py_metrics.cwl
inputs:
- id: in_segments
  doc: "One or more segmentation data files (*.cns, output of\nthe 'segment' command).\
    \ If more than one file is\ngiven, the number must match the coverage data files,\n\
    in which case the input files will be paired together\nin the given order. Otherwise,\
    \ the same segments will\nbe used for all coverage files."
  type: string[]
  inputBinding:
    prefix: --segments
- id: in_drop_low_coverage
  doc: "Drop very-low-coverage bins before calculations to\nreduce negative \"fat\
    \ tail\" of bin log2 values in poor-\nquality tumor samples."
  type: boolean?
  inputBinding:
    prefix: --drop-low-coverage
- id: in_output
  doc: "Output table file name.\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_cn_arrays
  doc: "One or more bin-level coverage data files (*.cnn,\n*.cnr)."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output table file name.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- metrics
