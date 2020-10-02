class: CommandLineTool
id: halLodExtract.cwl
inputs:
- id: in_all_sequences
  doc: ":            Sample all sequences (chromsomes / contigs / etc.) no\nmatter\
    \ how small they are.  By default, small sequences\nmay be skipped if they fall\
    \ within the step size. [default\n= 0]"
  type: boolean
  inputBinding:
    prefix: --allSequences
- id: in_cache_bytes
  doc: ":      maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':        number of metadata slots in hdf5 cache [default = 113]'
  type: long
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":        number of regular slots in hdf5 cache.  should be a prime\nnumber\
    \ ~= 10 * DefaultCacheRDCBytes / chunk [default =\n599999]"
  type: long
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':         w0 parameter fro hdf5 cache [default = 0.75]'
  type: long
  inputBinding:
    prefix: --cacheW0
- id: in_chunk
  doc: ':           hdf5 chunk size [default = 1000]'
  type: long
  inputBinding:
    prefix: --chunk
- id: in_deflate
  doc: ':         hdf5 compression factor [0:none - 9:max] [default = 2]'
  type: long
  inputBinding:
    prefix: --deflate
- id: in_in_memory
  doc: ":                load all data in memory (and disable hdf5 cache) [default\n\
    = 0]"
  type: boolean
  inputBinding:
    prefix: --inMemory
- id: in_keep_sequences
  doc: ":           Write the sequence strings to the output file. [default =\n0]"
  type: File
  inputBinding:
    prefix: --keepSequences
- id: in_min_seq_frac
  doc: ":      Minumum sequence length to sample as fraction of step\nsize: ie sequences\
    \ with length <= floor(minSeqFrac * step)\nare ignored. [default = 0.5]"
  type: long
  inputBinding:
    prefix: --minSeqFrac
- id: in_out_tree
  doc: ":         Phylogenetic tree of output HAL file.  Must contain only\ngenomes\
    \ from the input HAL file. (input's tree used if\nempty) [default = \"\"]"
  type: File
  inputBinding:
    prefix: --outTree
- id: in_probe_frac
  doc: ":       Fraction of bases in step-interval to sample while looking\nfor most\
    \ aligned column. [default = 0.035]"
  type: double
  inputBinding:
    prefix: --probeFrac
- id: in_root
  doc: ":            Name of root genome of tree to extract (root if empty)\n[default\
    \ = \"\"]\n"
  type: string
  inputBinding:
    prefix: --root
- id: in_in_hal_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_hal_path
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_scale
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_keep_sequences
  doc: ":           Write the sequence strings to the output file. [default =\n0]"
  type: File
  outputBinding:
    glob: $(inputs.in_keep_sequences)
cwlVersion: v1.1
baseCommand:
- halLodExtract
