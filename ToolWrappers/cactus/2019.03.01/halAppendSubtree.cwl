class: CommandLineTool
id: halAppendSubtree.cwl
inputs:
- id: in_branch_length
  doc: ":      branch length between appended and appendee nodes\n[default = 0]"
  type: long?
  inputBinding:
    prefix: --branchLength
- id: in_bridge_file
  doc: ":        alignment containing parent, subtree root, and its\nfuture siblings,\
    \ if any (required if not merging\nappended and appendee nodes) [default = ]"
  type: string?
  inputBinding:
    prefix: --bridgeFile
- id: in_cache_bytes
  doc: ":        maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long?
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':          number of metadata slots in hdf5 cache [default = 113]'
  type: long?
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":          number of regular slots in hdf5 cache.  should be a\nprime number\
    \ ~= 10 * DefaultCacheRDCBytes / chunk\n[default = 599999]"
  type: long?
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':           w0 parameter fro hdf5 cache [default = 0.75]'
  type: long?
  inputBinding:
    prefix: --cacheW0
- id: in_chunk
  doc: ':             hdf5 chunk size [default = 1000]'
  type: long?
  inputBinding:
    prefix: --chunk
- id: in_deflate
  doc: ':           hdf5 compression factor [0:none - 9:max] [default = 2]'
  type: long?
  inputBinding:
    prefix: --deflate
- id: in_in_memory
  doc: ":                  load all data in memory (and disable hdf5 cache)\n[default\
    \ = 0]"
  type: boolean?
  inputBinding:
    prefix: --inMemory
- id: in_merge
  doc: ":                     merge appended root and node that is appended to\n[default\
    \ = 0]"
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_no_mark_ancestors
  doc: ":           don't mark ancestors for update [default = 0]"
  type: boolean?
  inputBinding:
    prefix: --noMarkAncestors
- id: in_main_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_append_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_parent_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_root_name
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- halAppendSubtree
