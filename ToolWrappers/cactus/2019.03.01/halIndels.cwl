class: CommandLineTool
id: halIndels.cwl
inputs:
- id: in_adjacent_bases
  doc: ":       # of adjacent bases to examine while filtering\n[default = 5]"
  type: long?
  inputBinding:
    prefix: --adjacentBases
- id: in_cache_bytes
  doc: ":          maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long?
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':            number of metadata slots in hdf5 cache [default = 113]'
  type: long?
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":            number of regular slots in hdf5 cache.  should be a\nprime number\
    \ ~= 10 * DefaultCacheRDCBytes / chunk\n[default = 599999]"
  type: long?
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':             w0 parameter fro hdf5 cache [default = 0.75]'
  type: long?
  inputBinding:
    prefix: --cacheW0
- id: in_in_memory
  doc: ":                    load all data in memory (and disable hdf5 cache)\n[default\
    \ = 0]"
  type: boolean?
  inputBinding:
    prefix: --inMemory
- id: in_only_extant_targets
  doc: ":           Use only extant genomes for 'sibling'/outgroup\n[default = 0]\n"
  type: boolean?
  inputBinding:
    prefix: --onlyExtantTargets
- id: in_hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- halIndels
