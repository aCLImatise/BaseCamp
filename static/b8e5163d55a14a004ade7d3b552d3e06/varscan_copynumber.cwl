class: CommandLineTool
id: varscan_copynumber.cwl
inputs:
- id: min_base_qual
  doc: quality to count for coverage [20]
  type: string
  inputBinding:
    prefix: --min-base-qual
- id: min_map_qual
  doc: mapping quality to count for coverage [20]
  type: string
  inputBinding:
    prefix: --min-map-qual
- id: min_coverage
  doc: threshold for copynumber segments [20]
  type: string
  inputBinding:
    prefix: --min-coverage
- id: min_segment_size
  doc: of consecutive bases to report a segment [10]
  type: string
  inputBinding:
    prefix: --min-segment-size
- id: max_segment_size
  doc: before a new segment is made [100]
  type: long
  inputBinding:
    prefix: --max-segment-size
- id: p_value
  doc: for significant copynumber change-point [0.01]
  type: string
  inputBinding:
    prefix: --p-value
- id: data_ratio
  doc: /tumor input data ratio for copynumber adjustment [1.0]
  type: string
  inputBinding:
    prefix: --data-ratio
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- copynumber
