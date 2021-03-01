class: CommandLineTool
id: maf2hal.cwl
inputs:
- id: in_append
  doc: ":                  append maf as subtree to existing alignment. reference\n\
    must alaready be present in hal dabase as a leaf. [default\n= 0]"
  type: boolean?
  inputBinding:
    prefix: --append
- id: in_cache_bytes
  doc: ":      maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long?
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':        number of metadata slots in hdf5 cache [default = 113]'
  type: long?
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":        number of regular slots in hdf5 cache.  should be a prime\nnumber\
    \ ~= 10 * DefaultCacheRDCBytes / chunk [default =\n599999]"
  type: long?
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':         w0 parameter fro hdf5 cache [default = 0.75]'
  type: long?
  inputBinding:
    prefix: --cacheW0
- id: in_chunk
  doc: ':           hdf5 chunk size [default = 1000]'
  type: long?
  inputBinding:
    prefix: --chunk
- id: in_deflate
  doc: ':         hdf5 compression factor [0:none - 9:max] [default = 2]'
  type: long?
  inputBinding:
    prefix: --deflate
- id: in_in_memory
  doc: ":                load all data in memory (and disable hdf5 cache) [default\n\
    = 0]"
  type: boolean?
  inputBinding:
    prefix: --inMemory
- id: in_ref_genome
  doc: ":       name of reference genome in MAF (first found if empty)\n[default =\
    \ \"\"]"
  type: string?
  inputBinding:
    prefix: --refGenome
- id: in_target_genomes
  doc: ":   comma-separated (no spaces) list of target genomes (others\nare excluded)\
    \ (vist all if empty) [default = \"\"]\n"
  type: string?
  inputBinding:
    prefix: --targetGenomes
- id: in_maf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_hal_file
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
- maf2hal
