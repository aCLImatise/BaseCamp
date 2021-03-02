class: CommandLineTool
id: tombo_filter_genome_locations.cwl
inputs:
- id: in_fast_five_based_irs
  doc: Directories containing fast5 files.
  type: long[]
  inputBinding:
    prefix: --fast5-basedirs
- id: in_include_regions
  doc: "Filter out reads not falling completely within include\nregions. Omit start\
    \ and end coordinates to include an\nentire chromosome/sequence record. Format\
    \ regions as\n\"chrm[:start-end] [chrm2[:start2-end2] ...]\"."
  type: string[]
  inputBinding:
    prefix: --include-regions
- id: in_include_partial_overlap
  doc: "Include reads that partially overlap the specified\nregion. Default: Only\
    \ include reads completely\ncontained in a specified region"
  type: boolean?
  inputBinding:
    prefix: --include-partial-overlap
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
- genome_locations
