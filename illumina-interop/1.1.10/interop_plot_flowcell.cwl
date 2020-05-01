#!/usr/bin/env cwl-runner

baseCommand:
- interop_plot_flowcell
class: CommandLineTool
cwlVersion: v1.0
id: interop_plot_flowcell
inputs:
- doc: '[Intensity]: Metric to plot'
  id: metric_name
  inputBinding:
    prefix: --metric-name
  type: boolean
- doc: '[]: Only the data for the selected lane will be displayed'
  id: filter_by_lane
  inputBinding:
    prefix: --filter-by-lane
  type: boolean
- doc: '[]: Only the data for the selected channel will be displayed'
  id: filter_by_channel
  inputBinding:
    prefix: --filter-by-channel
  type: boolean
- doc: '[]: Only the data for the selected base will be displayed'
  id: filter_by_base
  inputBinding:
    prefix: --filter-by-base
  type: boolean
- doc: '[]: Only the data for the selected surface will be displayed'
  id: filter_by_surface
  inputBinding:
    prefix: --filter-by-surface
  type: boolean
- doc: '[]: Only the data for the selected read will be displayed'
  id: filter_by_read
  inputBinding:
    prefix: --filter-by-read
  type: boolean
- doc: '[]: Only the data for the selected cycle will be displayed'
  id: filter_by_cycle
  inputBinding:
    prefix: --filter-by-cycle
  type: boolean
- doc: '[]: Only the data for the selected tile number will be displayed'
  id: filter_by_tile_number
  inputBinding:
    prefix: --filter-by-tile-number
  type: boolean
- doc: '[]: Only the data for the selected swath will be displayed'
  id: filter_by_swath
  inputBinding:
    prefix: --filter-by-swath
  type: boolean
- doc: '[]: Only the data for the selected section will be displayed'
  id: filter_by_section
  inputBinding:
    prefix: --filter-by-section
  type: boolean
