class: CommandLineTool
id: ../../../cnvkit.py_breaks.cwl
inputs:
- id: in_min_probes
  doc: "Minimum number of within-gene probes on both sides of\na breakpoint to report\
    \ it. [Default: 1]"
  type: long
  inputBinding:
    prefix: --min-probes
- id: in_output
  doc: "Output table file name.\n"
  type: File
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output table file name.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- breaks
