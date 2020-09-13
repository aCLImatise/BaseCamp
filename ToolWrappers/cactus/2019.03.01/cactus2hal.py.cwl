class: CommandLineTool
id: ../../../cactus2hal.py.cwl
inputs:
- id: in_event
  doc: root event of the input phylogeny
  type: string
  inputBinding:
    prefix: --event
- id: in_cache_bytes
  doc: maximum size in bytes of regular hdf5 cache
  type: long
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: number of metadata slots in hdf5 cache
  type: long
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: number of regular slots in hdf5 cache
  type: long
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: w0 parameter for hdf5 cache
  type: long
  inputBinding:
    prefix: --cacheW0
- id: in_chunk
  doc: hdf5 chunk size
  type: long
  inputBinding:
    prefix: --chunk
- id: in_deflate
  doc: hdf5 compression factor
  type: long
  inputBinding:
    prefix: --deflate
- id: in_in_memory
  doc: keep entire hdf5 arrays in memory, overriding the
  type: boolean
  inputBinding:
    prefix: --inMemory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cactus2hal.py
