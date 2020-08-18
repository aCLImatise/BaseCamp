class: CommandLineTool
id: ../../../varscan_copynumber.cwl
inputs:
- id: min_base_qual
  doc: '- Minimum base quality to count for coverage [20]'
  type: boolean
  inputBinding:
    prefix: --min-base-qual
- id: min_map_qual
  doc: '- Minimum read mapping quality to count for coverage [20]'
  type: boolean
  inputBinding:
    prefix: --min-map-qual
- id: min_coverage
  doc: '- Minimum coverage threshold for copynumber segments [20]'
  type: boolean
  inputBinding:
    prefix: --min-coverage
- id: min_segment_size
  doc: '- Minimum number of consecutive bases to report a segment [10]'
  type: boolean
  inputBinding:
    prefix: --min-segment-size
- id: max_segment_size
  doc: '- Max size before a new segment is made [100]'
  type: boolean
  inputBinding:
    prefix: --max-segment-size
- id: p_value
  doc: '- P-value threshold for significant copynumber change-point [0.01]'
  type: boolean
  inputBinding:
    prefix: --p-value
- id: data_ratio
  doc: '- The normal/tumor input data ratio for copynumber adjustment [1.0]'
  type: boolean
  inputBinding:
    prefix: --data-ratio
- id: normal_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tumor_pile_up
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- copynumber
