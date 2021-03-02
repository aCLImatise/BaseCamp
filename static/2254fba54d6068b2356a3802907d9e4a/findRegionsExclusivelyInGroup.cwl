class: CommandLineTool
id: findRegionsExclusivelyInGroup.cwl
inputs:
- id: in_cache_bytes
  doc: ":           maximum size in bytes of regular hdf5 cache [default\n= 15728640]"
  type: long?
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ":             number of metadata slots in hdf5 cache [default =\n113]"
  type: long?
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":             number of regular slots in hdf5 cache.  should be a\nprime number\
    \ ~= 10 * DefaultCacheRDCBytes / chunk\n[default = 599999]"
  type: long?
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':              w0 parameter fro hdf5 cache [default = 0.75]'
  type: long?
  inputBinding:
    prefix: --cacheW0
- id: in_chunk
  doc: ':                hdf5 chunk size [default = 1000]'
  type: long?
  inputBinding:
    prefix: --chunk
- id: in_deflate
  doc: ":              hdf5 compression factor [0:none - 9:max] [default =\n2]"
  type: long?
  inputBinding:
    prefix: --deflate
- id: in_in_memory
  doc: ":                     load all data in memory (and disable hdf5 cache)\n[default\
    \ = 0]"
  type: boolean?
  inputBinding:
    prefix: --inMemory
- id: in_max_out_group_genomes
  doc: ":   maximum number of outgroup genomes that a region is\nallowed to be in\
    \ (default: 0) [default = 0]"
  type: long?
  inputBinding:
    prefix: --maxOutgroupGenomes
- id: in_min_in_group_genomes
  doc: ":    minimum number of ingroup genomes that a region must\nappear in (default:\
    \ all) [default = -1]\n"
  type: long?
  inputBinding:
    prefix: --minIngroupGenomes
- id: in_hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_reference_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_group_genomes
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- findRegionsExclusivelyInGroup
