class: CommandLineTool
id: hp_extract_pairwise.cwl
inputs:
- id: align_json
  doc: JSON file describing alignment (output of pairwise_align stage)
  type: string
  inputBinding:
    prefix: --align_json
- id: outfile
  doc: Output file. Default is stdout
  type: string
  inputBinding:
    prefix: --outfile
- id: out_fmt
  doc: 'Format for output (default: nuc_fa)'
  type: string
  inputBinding:
    prefix: --outfmt
- id: ref_reg
  doc: Reference region. String format is ref:start-stop. For example, the region
    string to extract pol when aligned to HXB2 is HIV_B.K03455.HXB2:2085-5096
  type: string
  inputBinding:
    prefix: --refreg
- id: debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- hp_extract_pairwise
