class: CommandLineTool
id: hal4dExtract.cwl
inputs:
- id: in_append
  doc: ':               append to instead of overwrite output file. [default = 0]'
  type: File?
  inputBinding:
    prefix: --append
- id: in_bed_version
  doc: ":   version of input bed file.  will be automatically detected if\nnot specified\
    \ [default = -1]"
  type: File?
  inputBinding:
    prefix: --bedVersion
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
- id: in_conserved
  doc: ":            ensure 4d sites are 4d sites in all leaf genomes [default =\n\
    0]"
  type: boolean?
  inputBinding:
    prefix: --conserved
- id: in_in_memory
  doc: ":             load all data in memory (and disable hdf5 cache) [default =\n\
    0]\n"
  type: boolean?
  inputBinding:
    prefix: --inMemory
- id: in_hal_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out_bed
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_append
  doc: ':               append to instead of overwrite output file. [default = 0]'
  type: File?
  outputBinding:
    glob: $(inputs.in_append)
hints: []
cwlVersion: v1.1
baseCommand:
- hal4dExtract
