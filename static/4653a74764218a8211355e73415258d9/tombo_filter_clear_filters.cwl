class: CommandLineTool
id: ../../../tombo_filter_clear_filters.cwl
inputs:
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: corrected_group
  doc: 'FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000'
  type: string
  inputBinding:
    prefix: --corrected-group
- id: quiet
  doc: Don't print status information.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- tombo
- filter
- clear_filters
