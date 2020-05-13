class: CommandLineTool
id: cactus2hal.py.cwl
inputs:
- id: cactus_project
  doc: cactus project xml file
  type: string
  inputBinding:
    position: 0
- id: hal_file_path
  doc: file path where newly created HAL file is to be stored.
  type: string
  inputBinding:
    position: 1
- id: event
  doc: root event of the input phylogeny
  type: string
  inputBinding:
    prefix: --event
- id: cache_bytes
  doc: maximum size in bytes of regular hdf5 cache
  type: string
  inputBinding:
    prefix: --cacheBytes
- id: cache_mdc
  doc: number of metadata slots in hdf5 cache
  type: string
  inputBinding:
    prefix: --cacheMDC
- id: cacher_dc
  doc: number of regular slots in hdf5 cache
  type: string
  inputBinding:
    prefix: --cacheRDC
- id: cache_w0
  doc: w0 parameter for hdf5 cache
  type: string
  inputBinding:
    prefix: --cacheW0
- id: chunk
  doc: hdf5 chunk size
  type: string
  inputBinding:
    prefix: --chunk
- id: deflate
  doc: hdf5 compression factor
  type: string
  inputBinding:
    prefix: --deflate
- id: in_memory
  doc: keep entire hdf5 arrays in memory, overriding the cache.
  type: boolean
  inputBinding:
    prefix: --inMemory
- id: append
  doc: append to an existing hal file instead of overwriting
  type: boolean
  inputBinding:
    prefix: --append
outputs: []
cwlVersion: v1.1
baseCommand:
- cactus2hal.py
