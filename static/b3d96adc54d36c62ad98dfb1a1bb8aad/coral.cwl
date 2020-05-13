class: CommandLineTool
id: coral.cwl
inputs:
- id: preview
  doc: determine fragment-length-range and library-type and exit
  type: boolean
  inputBinding:
    prefix: --preview
- id: library_type
  doc: '<first, second, unstranded>  library type of the sample, default: unstranded'
  type: boolean
  inputBinding:
    prefix: --library_type
- id: min_bridging_score
  doc: 'the minimized bottleneck weight in bridging path, default: 0.5'
  type: string
  inputBinding:
    prefix: --min_bridging_score
- id: dp_solution_size
  doc: 'candidate number of bridgign paths, default: 10'
  type: long
  inputBinding:
    prefix: --dp_solution_size
- id: dp_stack_size
  doc: 'number of weights maintained for each bridging path, default: 5'
  type: long
  inputBinding:
    prefix: --dp_stack_size
- id: max_clu_string_flank
  doc: 'maximized basepair difference for being in an equivalent class, default: 30'
  type: long
  inputBinding:
    prefix: --max_clustring_flank
- id: flank_tiny_length
  doc: 'maximized length for reconsidering error correction, default:  10'
  type: long
  inputBinding:
    prefix: --flank_tiny_length
- id: flank_tiny_ratio
  doc: 'maximized ratio for reconsidering error correction, default:  0.4'
  type: long
  inputBinding:
    prefix: --flank_tiny_ratio
- id: min_splice_bund_ary_hits
  doc: 'minimum number of spliced reads required for a junction, default: 1'
  type: long
  inputBinding:
    prefix: --min_splice_bundary_hits
- id: max_num_cigar
  doc: 'ignore reads with CIGAR size larger than this value, default: 1000'
  type: long
  inputBinding:
    prefix: --max_num_cigar
outputs: []
cwlVersion: v1.1
baseCommand:
- coral
