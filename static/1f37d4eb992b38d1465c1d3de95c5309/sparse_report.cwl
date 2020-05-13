class: CommandLineTool
id: sparse_report.cwl
inputs:
- id: workspace
  doc: Folders that contain "SPARSE extract" outputs. REQUIRED at least one folder.
  type: string
  inputBinding:
    position: 0
- id: path
  doc: All sparse workspaces under the assigned folder will be added in automatically.
  type: File
  inputBinding:
    prefix: --path
- id: tag
  doc: 'Tag level to report, default: s. Details see documents for the seqlist format.'
  type: string
  inputBinding:
    prefix: --tag
- id: absolute
  doc: 'Report absolute numbers. Default: False (report percentages)'
  type: boolean
  inputBinding:
    prefix: --absolute
- id: low
  doc: 'Lower limit of percentage for a value to report. Default: 0.0'
  type: string
  inputBinding:
    prefix: --low
- id: species_filter
  doc: Show only species listed in the file.
  type: string
  inputBinding:
    prefix: --speciesFilter
- id: sample_filter
  doc: 'Show only samples that have hits in the listed species. Default: False'
  type: boolean
  inputBinding:
    prefix: --sampleFilter
- id: inverse
  doc: Inverse the output matrix such that columns are species and rows are samples.
  type: boolean
  inputBinding:
    prefix: --inverse
outputs: []
cwlVersion: v1.1
baseCommand:
- sparse
- report
