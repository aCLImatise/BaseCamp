class: CommandLineTool
id: rnftools_sam2es.cwl
inputs:
- id: in_sam
  doc: SAM/BAM with aligned RNF reads(- for standard input).
  type: File
  inputBinding:
    prefix: --sam
- id: in_es
  doc: "Output ES file (evaluated segments, - for standard\noutput)."
  type: File
  inputBinding:
    prefix: --es
- id: in_allowed_delta
  doc: "Tolerance of difference of coordinates between true\n(i.e., expected) alignment\
    \ and real alignment (very\nimportant parameter!) (default: 5).\n"
  type: long
  inputBinding:
    prefix: --allowed-delta
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_es
  doc: "Output ES file (evaluated segments, - for standard\noutput)."
  type: File
  outputBinding:
    glob: $(inputs.in_es)
cwlVersion: v1.1
baseCommand:
- rnftools
- sam2es
