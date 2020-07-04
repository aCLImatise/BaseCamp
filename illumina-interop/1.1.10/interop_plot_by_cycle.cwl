class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/interop_plot_by_cycle.cwl
inputs:
- id: metric_name
  doc: '[Intensity]: Metric to plot'
  type: boolean
  inputBinding:
    prefix: --metric-name
- id: filter_by_lane
  doc: '[]: Only the data for the selected lane will be displayed'
  type: boolean
  inputBinding:
    prefix: --filter-by-lane
- id: filter_by_channel
  doc: '[]: Only the data for the selected channel will be displayed'
  type: boolean
  inputBinding:
    prefix: --filter-by-channel
- id: filter_by_base
  doc: '[]: Only the data for the selected base will be displayed'
  type: boolean
  inputBinding:
    prefix: --filter-by-base
- id: filter_by_surface
  doc: '[]: Only the data for the selected surface will be displayed'
  type: boolean
  inputBinding:
    prefix: --filter-by-surface
- id: filter_by_read
  doc: '[]: Only the data for the selected read will be displayed'
  type: boolean
  inputBinding:
    prefix: --filter-by-read
- id: filter_by_cycle
  doc: '[]: Only the data for the selected cycle will be displayed'
  type: boolean
  inputBinding:
    prefix: --filter-by-cycle
- id: filter_by_tile_number
  doc: '[]: Only the data for the selected tile number will be displayed'
  type: boolean
  inputBinding:
    prefix: --filter-by-tile-number
- id: filter_by_swath
  doc: '[]: Only the data for the selected swath will be displayed'
  type: boolean
  inputBinding:
    prefix: --filter-by-swath
- id: filter_by_section
  doc: '[]: Only the data for the selected section will be displayed'
  type: boolean
  inputBinding:
    prefix: --filter-by-section
- id: option_one
  doc: ''
  type: string
  inputBinding:
    prefix: --option1
- id: option_two
  doc: ''
  type: string
  inputBinding:
    prefix: --option2
- id: run_folder
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- interop_plot_by_cycle
