class: CommandLineTool
id: preseq_bound_pop.cwl
inputs:
- id: bound_pop
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: sorted_bed_file
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: output
  doc: 'species richness output file (default: stdout) '
  type: boolean
  inputBinding:
    prefix: -output
- id: max_num_points
  doc: 'maximum number of points in quadrature estimates  (default: 10) '
  type: boolean
  inputBinding:
    prefix: -max_num_points
- id: tolerance
  doc: 'numerical tolerance (default: 1e-20) '
  type: boolean
  inputBinding:
    prefix: -tolerance
- id: bootstraps
  doc: 'number of bootstraps (default: 500) '
  type: boolean
  inputBinding:
    prefix: -bootstraps
- id: c_level
  doc: 'level for confidence intervals (default: 0.95) '
  type: boolean
  inputBinding:
    prefix: -clevel
- id: verbose
  doc: 'print more information '
  type: boolean
  inputBinding:
    prefix: -verbose
- id: pe
  doc: 'input is paired end read file '
  type: boolean
  inputBinding:
    prefix: -pe
- id: hist
  doc: 'input is a text file containing the observed histogram '
  type: boolean
  inputBinding:
    prefix: -hist
- id: vals
  doc: 'input is a text file containing only the observed  duplicate counts '
  type: boolean
  inputBinding:
    prefix: -vals
- id: bam
  doc: 'input is in BAM format '
  type: boolean
  inputBinding:
    prefix: -bam
- id: seg_len
  doc: 'maximum segment length when merging paired end bam reads  (default: 5000) '
  type: boolean
  inputBinding:
    prefix: -seg_len
- id: quick
  doc: 'quick mode, estimate without bootstrapping '
  type: boolean
  inputBinding:
    prefix: -quick
- id: seed
  doc: 'seed for random number generator '
  type: boolean
  inputBinding:
    prefix: -seed
- id: about
  doc: 'print about message '
  type: boolean
  inputBinding:
    prefix: -about
outputs: []
cwlVersion: v1.1
baseCommand:
- preseq
- bound_pop
