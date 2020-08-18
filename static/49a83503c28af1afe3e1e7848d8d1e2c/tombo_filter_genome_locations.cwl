class: CommandLineTool
id: ../../../tombo_filter_genome_locations.cwl
inputs:
- id: fast_five_based_irs
  doc: Directories containing fast5 files.
  type: string[]
  inputBinding:
    prefix: --fast5-basedirs
- id: include_regions
  doc: Filter out reads not falling completely within include regions. Omit start
    and end coordinates to include an entire chromosome/sequence record. Format regions
    as "chrm[:start-end] [chrm2[:start2-end2] ...]".
  type: string[]
  inputBinding:
    prefix: --include-regions
- id: include_partial_overlap
  doc: 'Include reads that partially overlap the specified region. Default: Only include
    reads completely contained in a specified region'
  type: boolean
  inputBinding:
    prefix: --include-partial-overlap
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
- genome_locations
