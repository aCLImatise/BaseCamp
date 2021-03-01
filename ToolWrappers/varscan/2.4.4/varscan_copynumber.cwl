class: CommandLineTool
id: varscan_copynumber.cwl
inputs:
- id: in_min_base_qual
  doc: '- Minimum base quality to count for coverage [20]'
  type: boolean?
  inputBinding:
    prefix: --min-base-qual
- id: in_min_map_qual
  doc: '- Minimum read mapping quality to count for coverage [20]'
  type: boolean?
  inputBinding:
    prefix: --min-map-qual
- id: in_min_coverage
  doc: '- Minimum coverage threshold for copynumber segments [20]'
  type: boolean?
  inputBinding:
    prefix: --min-coverage
- id: in_min_segment_size
  doc: '- Minimum number of consecutive bases to report a segment [10]'
  type: boolean?
  inputBinding:
    prefix: --min-segment-size
- id: in_max_segment_size
  doc: '- Max size before a new segment is made [100]'
  type: boolean?
  inputBinding:
    prefix: --max-segment-size
- id: in_p_value
  doc: '- P-value threshold for significant copynumber change-point [0.01]'
  type: boolean?
  inputBinding:
    prefix: --p-value
- id: in_data_ratio
  doc: '- The normal/tumor input data ratio for copynumber adjustment [1.0]'
  type: boolean?
  inputBinding:
    prefix: --data-ratio
- id: in_normal_pile_up
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_tumor_pile_up
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- varscan
- copynumber
