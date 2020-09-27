class: CommandLineTool
id: rnftools_et2roc.cwl
inputs:
- id: in_et
  doc: "Input ET file (evaluated read tuples, - for standard\ninput)."
  type: File
  inputBinding:
    prefix: --et
- id: in_roc
  doc: "Output ROC file (evaluated reads, - for standard\noutput).\n"
  type: File
  inputBinding:
    prefix: --roc
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_roc
  doc: "Output ROC file (evaluated reads, - for standard\noutput).\n"
  type: File
  outputBinding:
    glob: $(inputs.in_roc)
cwlVersion: v1.1
baseCommand:
- rnftools
- et2roc
