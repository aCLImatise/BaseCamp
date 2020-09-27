class: CommandLineTool
id: halSynteny.cwl
inputs:
- id: in_cache_bytes
  doc: ":          maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':            number of metadata slots in hdf5 cache [default = 113]'
  type: long
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":            number of regular slots in hdf5 cache.  should be a\nprime number\
    \ ~= 10 * DefaultCacheRDCBytes / chunk\n[default = 599999]"
  type: long
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':             w0 parameter fro hdf5 cache [default = 0.75]'
  type: long
  inputBinding:
    prefix: --cacheW0
- id: in_in_memory
  doc: ":                    load all data in memory (and disable hdf5 cache)\n[default\
    \ = 0]"
  type: boolean
  inputBinding:
    prefix: --inMemory
- id: in_max_anchor_distance
  doc: ":   upper bound on distance for syntenic psl blocks\n[default = 5000]"
  type: long
  inputBinding:
    prefix: --maxAnchorDistance
- id: in_min_block_size
  doc: ':        lower bound on synteny block length [default = 5000]'
  type: long
  inputBinding:
    prefix: --minBlockSize
- id: in_query_chromosome
  doc: ':     chromosome to infer synteny [default = ""]'
  type: string
  inputBinding:
    prefix: --queryChromosome
- id: in_query_genome
  doc: ':         source genome [default = ""]'
  type: string
  inputBinding:
    prefix: --queryGenome
- id: in_target_genome
  doc: ':        reference genome name [default = ""]'
  type: string
  inputBinding:
    prefix: --targetGenome
- id: in_hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_psl_path
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- halSynteny
