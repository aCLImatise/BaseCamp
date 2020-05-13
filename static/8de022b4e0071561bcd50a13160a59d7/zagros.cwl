class: CommandLineTool
id: zagros.cwl
inputs:
- id: output
  doc: 'output file name (default: stdout) '
  type: boolean
  inputBinding:
    prefix: -output
- id: width
  doc: 'width of motifs to find (4 <= w <= 12; default: 6) '
  type: boolean
  inputBinding:
    prefix: -width
- id: number
  doc: 'number of motifs to output (default: 10) '
  type: boolean
  inputBinding:
    prefix: -number
- id: chrom
  doc: 'directory with chrom files (FASTA format) '
  type: boolean
  inputBinding:
    prefix: -chrom
- id: structure
  doc: 'structure information file '
  type: boolean
  inputBinding:
    prefix: -structure
- id: diagnostic_events
  doc: 'diagnostic events information file '
  type: boolean
  inputBinding:
    prefix: -diagnostic_events
- id: delta
  doc: 'provide a fixed value for delta, the offset of  cross-linking site from motif
    occurrences. -8 <= l <=  8; if omitted, delta is optimised using an exhaustive  search '
  type: boolean
  inputBinding:
    prefix: -delta
- id: geo
  doc: 'optimize the geometric distributionparameter for  the distirbution of cross-link
    sites around motif  occurrences, using the Newton-Raphson algorithm.  If omitted,
    this parameter is not optimised and is set  to a empirically pre-determined default
    value. '
  type: boolean
  inputBinding:
    prefix: -geo
- id: de_weight
  doc: "A weight to determine the diagnostic events' level of  contribution (default:\
    \ 1.1) "
  type: boolean
  inputBinding:
    prefix: -de_weight
- id: indicators
  doc: 'output indicator probabilities for each sequence  and motif to this file '
  type: boolean
  inputBinding:
    prefix: -indicators
- id: starting_points
  doc: 'number of starting points to try for EM search. Higher  values will be slower,
    but more likely to find the  global maximum (default: 10) '
  type: boolean
  inputBinding:
    prefix: -starting-points
- id: verbose
  doc: 'print more run info '
  type: boolean
  inputBinding:
    prefix: -verbose
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
outputs: []
cwlVersion: v1.1
baseCommand:
- zagros
