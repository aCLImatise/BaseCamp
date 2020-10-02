class: CommandLineTool
id: hp_extract_pairwise.cwl
inputs:
- id: in_align_json
  doc: "JSON file describing alignment (output of\npairwise_align stage)"
  type: File
  inputBinding:
    prefix: --align_json
- id: in_outfile
  doc: Output file. Default is stdout
  type: File
  inputBinding:
    prefix: --outfile
- id: in_out_fmt
  doc: 'Format for output (default: nuc_fa)'
  type: string
  inputBinding:
    prefix: --outfmt
- id: in_ref_reg
  doc: "Reference region. String format is ref:start-stop. For\nexample, the region\
    \ string to extract pol when aligned\nto HXB2 is HIV_B.K03455.HXB2:2085-5096"
  type: string
  inputBinding:
    prefix: --refreg
- id: in_debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_align_json
  doc: "JSON file describing alignment (output of\npairwise_align stage)"
  type: File
  outputBinding:
    glob: $(inputs.in_align_json)
- id: out_outfile
  doc: Output file. Default is stdout
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- hp_extract_pairwise
