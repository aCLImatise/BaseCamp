class: CommandLineTool
id: halSingleCopyRegionsExtract.cwl
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
- id: in_chunk
  doc: ':               hdf5 chunk size [default = 1000]'
  type: long
  inputBinding:
    prefix: --chunk
- id: in_deflate
  doc: ':             hdf5 compression factor [0:none - 9:max] [default = 2]'
  type: long
  inputBinding:
    prefix: --deflate
- id: in_in_memory
  doc: ":                    load all data in memory (and disable hdf5 cache)\n[default\
    \ = 0]"
  type: boolean
  inputBinding:
    prefix: --inMemory
- id: in_length
  doc: ":              length to traverse (default: until end of\ngenome/sequence)\
    \ [default = -1]"
  type: long
  inputBinding:
    prefix: --length
- id: in_ref_sequence
  doc: ':         sequence to traverse [default = ]'
  type: string
  inputBinding:
    prefix: --refSequence
- id: in_require_all_targets
  doc: ":           require the regions to be present in all target\ngenomes [default\
    \ = 0]"
  type: boolean
  inputBinding:
    prefix: --requireAllTargets
- id: in_start
  doc: ":               start position within the sequence (within entire\ngenome\
    \ if --refSequence is not set) [default = 0]"
  type: long
  inputBinding:
    prefix: --start
- id: in_target_genomes
  doc: ":       genomes to check for homologous duplicated sites\n(comma-separated,\
    \ default=leaves) [default = ]\n"
  type: string
  inputBinding:
    prefix: --targetGenomes
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- halSingleCopyRegionsExtract
