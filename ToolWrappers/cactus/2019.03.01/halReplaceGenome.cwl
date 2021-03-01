class: CommandLineTool
id: halReplaceGenome.cwl
inputs:
- id: in_bottom_alignment_file
  doc: ":   hal file containing an alignment of the genome and\nits children. Required\
    \ for non-leaf genomes.\n[default = \"\"]"
  type: File?
  inputBinding:
    prefix: --bottomAlignmentFile
- id: in_cache_bytes
  doc: ":            maximum size in bytes of regular hdf5 cache [default\n= 15728640]"
  type: long?
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ":              number of metadata slots in hdf5 cache [default =\n113]"
  type: long?
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":              number of regular slots in hdf5 cache.  should be a\nprime\
    \ number ~= 10 * DefaultCacheRDCBytes / chunk\n[default = 599999]"
  type: long?
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':               w0 parameter fro hdf5 cache [default = 0.75]'
  type: long?
  inputBinding:
    prefix: --cacheW0
- id: in_chunk
  doc: ':                 hdf5 chunk size [default = 1000]'
  type: long?
  inputBinding:
    prefix: --chunk
- id: in_deflate
  doc: ":               hdf5 compression factor [0:none - 9:max] [default =\n2]"
  type: long?
  inputBinding:
    prefix: --deflate
- id: in_in_memory
  doc: ":                      load all data in memory (and disable hdf5 cache)\n\
    [default = 0]"
  type: boolean?
  inputBinding:
    prefix: --inMemory
- id: in_no_bottom_alignment
  doc: ":             remove all bottom segments despite being non-leaf.\nThis will\
    \ result in an invalid HAL file, at least\ntemporarily. [default = 0]"
  type: boolean?
  inputBinding:
    prefix: --noBottomAlignment
- id: in_no_mark_ancestors
  doc: ":               don't mark ancestors for update [default = 0]"
  type: boolean?
  inputBinding:
    prefix: --noMarkAncestors
- id: in_no_top_alignment
  doc: ":                remove all top segments despite being non-root. This\nwill\
    \ result in an invalid HAL file, at least"
  type: boolean?
  inputBinding:
    prefix: --noTopAlignment
- id: in_top_alignment_file
  doc: ":      hal file containing an alignment of the genome, its\nparent, and its\
    \ siblings. Required if the genome to\nbe replaced is not the root. [default =\
    \ \"\"]\n"
  type: File?
  inputBinding:
    prefix: --topAlignmentFile
- id: in_in_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_genome_name
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
- halReplaceGenome
