class: CommandLineTool
id: tombo_filter_level_coverage.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_percent_to_filter
  doc: "Percentage of all reads to filter. Reads are randomly\nselected weighted according\
    \ to the approximate\ncoverage at the mapped genomic location. This can be\nuseful\
    \ in modeling and testing. Default: 10.000000"
  type: double?
  inputBinding:
    prefix: --percent-to-filter
- id: in_corrected_group
  doc: "FAST5 group created by resquiggle command. Default:\nRawGenomeCorrected_000"
  type: long?
  inputBinding:
    prefix: --corrected-group
- id: in_quiet
  doc: Don't print status information.
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tombo
- filter
- level_coverage
