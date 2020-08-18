class: CommandLineTool
id: ../../../tombo_filter_level_coverage.cwl
inputs:
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: percent_to_filter
  doc: 'Percentage of all reads to filter. Reads are randomly selected weighted according
    to the approximate coverage at the mapped genomic location. This can be useful
    in modeling and testing. Default: 10.000000'
  type: string
  inputBinding:
    prefix: --percent-to-filter
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
- level_coverage
