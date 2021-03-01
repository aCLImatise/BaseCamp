class: CommandLineTool
id: halWiggleLiftover.cwl
inputs:
- id: in_append
  doc: ":               append/merge results into tgtWig.  Note that the entire\n\
    tgtWig file will be loaded into memory then overwritten, so\nthis data can be\
    \ lost in event of a crash [default = 0]"
  type: boolean?
  inputBinding:
    prefix: --append
- id: in_cache_bytes
  doc: ":   maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long?
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':     number of metadata slots in hdf5 cache [default = 113]'
  type: long?
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":     number of regular slots in hdf5 cache.  should be a prime\nnumber ~=\
    \ 10 * DefaultCacheRDCBytes / chunk [default =\n599999]"
  type: long?
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':      w0 parameter fro hdf5 cache [default = 0.75]'
  type: long?
  inputBinding:
    prefix: --cacheW0
- id: in_in_memory
  doc: ":             load all data in memory (and disable hdf5 cache) [default =\n\
    0]"
  type: boolean?
  inputBinding:
    prefix: --inMemory
- id: in_no_dupes
  doc: ':              do not map between duplications in graph. [default = 0]'
  type: boolean?
  inputBinding:
    prefix: --noDupes
- id: in_hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_src_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_src_wig
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_tgt_genome
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_tg_twig
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- halWiggleLiftover
