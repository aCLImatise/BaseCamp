class: CommandLineTool
id: fba_filter.cwl
inputs:
- id: in_input
  doc: specify an input file. The output of `extract` or `qc`
  type: File?
  inputBinding:
    prefix: --input
- id: in_output
  doc: specify an output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_cb_start
  doc: "specify expected cell barcode starting postion on read\n1. Default (0)"
  type: long?
  inputBinding:
    prefix: --cb_start
- id: in_cb_mismatches
  doc: "specify cell barcode mismatching threshold. Default\n(1)"
  type: long?
  inputBinding:
    prefix: --cb_mismatches
- id: in_cb_left_shift
  doc: "specify the maximum left shift allowed for cell\nbarcode. Default (1)"
  type: long?
  inputBinding:
    prefix: --cb_left_shift
- id: in_cb_right_shift
  doc: "specify the maximum right shift allowed for cell\nbarcode. Default (1)"
  type: long?
  inputBinding:
    prefix: --cb_right_shift
- id: in_cb_extra_seq
  doc: "specify an extra constant sequence to filter on read\n1. Default (None)"
  type: long?
  inputBinding:
    prefix: --cb_extra_seq
- id: in_cb_extra_seq_mismatches
  doc: "specify the maximun edit distance allowed for the\nextra constant sequence\
    \ on read 1 for filtering.\nDefault (None)"
  type: long?
  inputBinding:
    prefix: --cb_extra_seq_mismatches
- id: in_fb_start
  doc: "specify expected feature barcode starting postion on\nread 2. Default (10)"
  type: long?
  inputBinding:
    prefix: --fb_start
- id: in_fb_mismatches
  doc: "specify feature barcode mismatching threshold. Default\n(1)"
  type: long?
  inputBinding:
    prefix: --fb_mismatches
- id: in_fb_left_shift
  doc: "specify the maximum left shift allowed for feature\nbarcode. Default (1)"
  type: long?
  inputBinding:
    prefix: --fb_left_shift
- id: in_fb_right_shift
  doc: "specify the maximum right shift allowed for feature\nbarcode. Default (1)"
  type: long?
  inputBinding:
    prefix: --fb_right_shift
- id: in_fb_extra_seq
  doc: "specify an extra constant sequence to filter on read\n2. Default (None)"
  type: long?
  inputBinding:
    prefix: --fb_extra_seq
- id: in_fb_extra_seq_mismatches
  doc: "specify the maximun edit distance allowed for the\nextra constant sequence\
    \ on read 2. Default (None)\n"
  type: long?
  inputBinding:
    prefix: --fb_extra_seq_mismatches
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: specify an output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fba:0.0.10.post1--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- fba
- filter
