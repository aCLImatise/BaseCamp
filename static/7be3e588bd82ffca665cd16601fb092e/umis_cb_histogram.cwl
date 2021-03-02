class: CommandLineTool
id: umis_cb_histogram.cwl
inputs:
- id: in_umi_histogram
  doc: "Output a count of each UMI for each cellular barcode\nto this file."
  type: File?
  inputBinding:
    prefix: --umi_histogram
- id: in_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_umi_histogram
  doc: "Output a count of each UMI for each cellular barcode\nto this file."
  type: File?
  outputBinding:
    glob: $(inputs.in_umi_histogram)
hints: []
cwlVersion: v1.1
baseCommand:
- umis
- cb_histogram
