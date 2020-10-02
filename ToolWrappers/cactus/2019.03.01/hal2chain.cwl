class: CommandLineTool
id: hal2chain.cwl
inputs:
- id: in_cache_bytes
  doc: ":   maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':     number of metadata slots in hdf5 cache [default = 113]'
  type: long
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":     number of regular slots in hdf5 cache.  should be a prime\nnumber ~=\
    \ 10 * DefaultCacheRDCBytes / chunk [default =\n599999]"
  type: long
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':      w0 parameter fro hdf5 cache [default = 0.75]'
  type: long
  inputBinding:
    prefix: --cacheW0
- id: in_chain_file
  doc: ':    path for output file.  stdout if not specified [default = ""]'
  type: File
  inputBinding:
    prefix: --chainFile
- id: in_in_memory
  doc: ":             load all data in memory (and disable hdf5 cache) [default =\n\
    0]"
  type: boolean
  inputBinding:
    prefix: --inMemory
- id: in_length
  doc: ':       maximum length of chain to output. [default = 0]'
  type: long
  inputBinding:
    prefix: --length
- id: in_max_gap
  doc: ":       maximum indel length to be considered a gap within a chain.\n[default\
    \ = 20]"
  type: long
  inputBinding:
    prefix: --maxGap
- id: in_sequence
  doc: ":     sequence name in query genome (all sequences if not\nspecified) [default\
    \ = \"\"]"
  type: string
  inputBinding:
    prefix: --sequence
- id: in_start
  doc: ':        start position in query genome [default = 0]'
  type: long
  inputBinding:
    prefix: --start
- id: in_hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_chain_file
  doc: ':    path for output file.  stdout if not specified [default = ""]'
  type: File
  outputBinding:
    glob: $(inputs.in_chain_file)
cwlVersion: v1.1
baseCommand:
- hal2chain
