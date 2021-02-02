class: CommandLineTool
id: sparse_report.cwl
inputs:
- id: in_path
  doc: All sparse workspaces under the assigned folder will be added in automatically.
  type: File
  inputBinding:
    prefix: --path
- id: in_tag
  doc: 'Tag level to report, default: s. Details see documents for the seqlist format.'
  type: string
  inputBinding:
    prefix: --tag
- id: in_absolute
  doc: 'Report absolute numbers. Default: False (report percentages)'
  type: boolean
  inputBinding:
    prefix: --absolute
- id: in_low
  doc: 'Lower limit of percentage for a value to report. Default: 0.0'
  type: double
  inputBinding:
    prefix: --low
- id: in_species_filter
  doc: Show only species listed in the file.
  type: File
  inputBinding:
    prefix: --speciesFilter
- id: in_sample_filter
  doc: 'Show only samples that have hits in the listed species. Default: False'
  type: boolean
  inputBinding:
    prefix: --sampleFilter
- id: in_inverse
  doc: Inverse the output matrix such that columns are species and rows are samples.
  type: boolean
  inputBinding:
    prefix: --inverse
- id: in_workspace
  doc: Folders that contain "SPARSE extract" outputs. REQUIRED at least one folder.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sparse
- report
