class: CommandLineTool
id: halSummarizeMutations.cwl
inputs:
- id: in_cache_bytes
  doc: ":      maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':        number of metadata slots in hdf5 cache [default = 113]'
  type: long
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":        number of regular slots in hdf5 cache.  should be a prime\nnumber\
    \ ~= 10 * DefaultCacheRDCBytes / chunk [default =\n599999]"
  type: long
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':         w0 parameter fro hdf5 cache [default = 0.75]'
  type: long
  inputBinding:
    prefix: --cacheW0
- id: in_in_memory
  doc: ":                load all data in memory (and disable hdf5 cache) [default\n\
    = 0]"
  type: boolean
  inputBinding:
    prefix: --inMemory
- id: in_just_subs
  doc: ":                just count substitutions.  Note results are total subs\n\
    between genome  and all children, rather than branch\nresults  when using the\
    \ normal interface.  For tuning  and\nperformance checking only [default = 0]"
  type: boolean
  inputBinding:
    prefix: --justSubs
- id: in_max_gap
  doc: ":          maximum indel length to be considered a gap.  Gaps  can be\nnested\
    \ within other rearrangements. [default = 20]"
  type: long
  inputBinding:
    prefix: --maxGap
- id: in_max_n_fraction
  doc: ":    maximum fraction of Ns in a rearranged segment for it to\nnot be ignored\
    \ as missing data. [default = 1]"
  type: long
  inputBinding:
    prefix: --maxNFraction
- id: in_root_genome
  doc: ':      name of root genome (none if empty) [default = ""]'
  type: string
  inputBinding:
    prefix: --rootGenome
- id: in_target_genomes
  doc: ":   comma-separated (no spaces) list of target genomes (others\nare excluded)\
    \ (vist all if empty) [default = \"\"]\n"
  type: string
  inputBinding:
    prefix: --targetGenomes
- id: in_hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- halSummarizeMutations
