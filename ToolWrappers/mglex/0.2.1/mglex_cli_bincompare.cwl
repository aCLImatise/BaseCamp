class: CommandLineTool
id: mglex_cli_bincompare.cwl
inputs:
- id: in_posterior_ratio
  doc: 'Weigh sequences by (subset) bin posterior [default: False]'
  type: boolean?
  inputBinding:
    prefix: --posterior-ratio
- id: in_data
  doc: Likelihood matrix [standard input]
  type: File?
  inputBinding:
    prefix: --data
- id: in_weight
  doc: Optional weights (sequence length) file [None]
  type: File?
  inputBinding:
    prefix: --weight
- id: in_var_3
  doc: <file, --subset-1 <file>          Use subset of column indices (1-based) [None]
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_var_4
  doc: <file, --subset-2 <file>          Use subset of column indices (1-based) [None]
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_beta
  doc: 'Beta correction factor (e.g. determined via MSE evaluation) [default: 1.0]'
  type: double?
  inputBinding:
    prefix: --beta
- id: in_prefilter_thresh
  doc: 'Contig overlap similarity used to avoid likelihood calculations [default:
    0.5]'
  type: double?
  inputBinding:
    prefix: --prefilter-thresh
- id: in_edge_thresh
  doc: 'Only distances <= threshold are reported; use "inf" to show all [default:
    30]'
  type: double?
  inputBinding:
    prefix: --edge-thresh
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_subset_two
  doc: ''
  type: File?
  inputBinding:
    prefix: --subset-2
- id: in_subset_one
  doc: ''
  type: File?
  inputBinding:
    prefix: --subset-1
- id: in_bin_compare
  doc: "[--weight <file> --data <file> --subset-1 <file> --subset-2 <file> --beta\
    \ <float> --posterior-ratio]\n[--prefilter-thresh <float> --edge-thresh <float>]"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mglex-cli
- bincompare
