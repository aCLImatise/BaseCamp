class: CommandLineTool
id: rnftools_es2et.cwl
inputs:
- id: in_es
  doc: "Input ES file (evaluated segments, - for standard\ninput)."
  type: File?
  inputBinding:
    prefix: --es
- id: in_et
  doc: "Output ET file (evaluated read tuples, - for standard\noutput).\n"
  type: File?
  inputBinding:
    prefix: --et
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_et
  doc: "Output ET file (evaluated read tuples, - for standard\noutput).\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_et)
hints: []
cwlVersion: v1.1
baseCommand:
- rnftools
- es2et
