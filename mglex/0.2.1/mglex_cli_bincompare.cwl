class: CommandLineTool
id: mglex_cli_bincompare.cwl
inputs:
- id: bin_compare
  doc: (--help | --version)
  type: string
  inputBinding:
    position: 0
- id: bin_compare
  doc: '[--weight <file> --data <file> --subset-1 <file> --subset-2 <file> --beta
    <float> --posterior-ratio] [--prefilter-thresh <float> --edge-thresh <float>]'
  type: string
  inputBinding:
    position: 1
- id: posterior_ratio
  doc: 'Weigh sequences by (subset) bin posterior [default: False]'
  type: boolean
  inputBinding:
    prefix: --posterior-ratio
- id: data
  doc: Likelihood matrix [standard input]
  type: File
  inputBinding:
    prefix: --data
- id: weight
  doc: Optional weights (sequence length) file [None]
  type: File
  inputBinding:
    prefix: --weight
- id: s
  doc: <file, --subset-1 <file>          Use subset of column indices (1-based) [None]
  type: boolean
  inputBinding:
    prefix: -s
- id: s
  doc: <file, --subset-2 <file>          Use subset of column indices (1-based) [None]
  type: boolean
  inputBinding:
    prefix: -S
- id: beta
  doc: 'Beta correction factor (e.g. determined via MSE evaluation) [default: 1.0]'
  type: double
  inputBinding:
    prefix: --beta
- id: prefilter_thresh
  doc: 'Contig overlap similarity used to avoid likelihood calculations [default:
    0.5]'
  type: double
  inputBinding:
    prefix: --prefilter-thresh
- id: edge_thresh
  doc: 'Only distances <= threshold are reported; use "inf" to show all [default:
    30]'
  type: double
  inputBinding:
    prefix: --edge-thresh
outputs: []
cwlVersion: v1.1
baseCommand:
- mglex-cli
- bincompare
