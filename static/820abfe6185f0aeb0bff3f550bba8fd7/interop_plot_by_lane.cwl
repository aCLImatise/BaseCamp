class: CommandLineTool
id: interop_plot_by_lane.cwl
inputs:
- id: in_metric_name
  doc: '[ClusterCount]: Metric to plot'
  type: boolean?
  inputBinding:
    prefix: --metric-name
- id: in_filter_by_lane
  doc: '[]: Only the data for the selected lane will be displayed'
  type: boolean?
  inputBinding:
    prefix: --filter-by-lane
- id: in_filter_by_channel
  doc: '[]: Only the data for the selected channel will be displayed'
  type: boolean?
  inputBinding:
    prefix: --filter-by-channel
- id: in_filter_by_base
  doc: '[]: Only the data for the selected base will be displayed'
  type: boolean?
  inputBinding:
    prefix: --filter-by-base
- id: in_filter_by_surface
  doc: '[]: Only the data for the selected surface will be displayed'
  type: boolean?
  inputBinding:
    prefix: --filter-by-surface
- id: in_filter_by_read
  doc: '[]: Only the data for the selected read will be displayed'
  type: boolean?
  inputBinding:
    prefix: --filter-by-read
- id: in_filter_by_cycle
  doc: '[]: Only the data for the selected cycle will be displayed'
  type: boolean?
  inputBinding:
    prefix: --filter-by-cycle
- id: in_filter_by_tile_number
  doc: '[]: Only the data for the selected tile number will be displayed'
  type: boolean?
  inputBinding:
    prefix: --filter-by-tile-number
- id: in_filter_by_swath
  doc: '[]: Only the data for the selected swath will be displayed'
  type: boolean?
  inputBinding:
    prefix: --filter-by-swath
- id: in_filter_by_section
  doc: '[]: Only the data for the selected section will be displayed'
  type: boolean?
  inputBinding:
    prefix: --filter-by-section
- id: in_option_two
  doc: ''
  type: long?
  inputBinding:
    prefix: --option2
- id: in_option_one
  doc: ''
  type: long?
  inputBinding:
    prefix: --option1
- id: in_run_folder
  doc: ''
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
- interop_plot_by_lane
