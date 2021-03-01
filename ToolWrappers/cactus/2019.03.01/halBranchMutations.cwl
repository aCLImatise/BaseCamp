class: CommandLineTool
id: halBranchMutations.cwl
inputs:
- id: in_cache_bytes
  doc: ":     maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long?
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':       number of metadata slots in hdf5 cache [default = 113]'
  type: long?
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":       number of regular slots in hdf5 cache.  should be a prime\nnumber\
    \ ~= 10 * DefaultCacheRDCBytes / chunk [default =\n599999]"
  type: long?
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':        w0 parameter fro hdf5 cache [default = 0.75]'
  type: long?
  inputBinding:
    prefix: --cacheW0
- id: in_del_break_file
  doc: ":   bed file write deletion breakpoints to in reference genome\ncoordinates\
    \ (or stdout) [default = \"\"]"
  type: File?
  inputBinding:
    prefix: --delBreakFile
- id: in_in_memory
  doc: ":               load all data in memory (and disable hdf5 cache) [default\
    \ =\n0]"
  type: boolean?
  inputBinding:
    prefix: --inMemory
- id: in_length
  doc: ":         length of the reference genome (or sequence if specified)\nto convert.\
    \  If set to 0, the entire thing is converted\n[default = 0]"
  type: long?
  inputBinding:
    prefix: --length
- id: in_max_gap
  doc: ":         maximum indel length to be considered a gap.  Gaps  can be\nnested\
    \ within other rearrangements. [default = 20]"
  type: long?
  inputBinding:
    prefix: --maxGap
- id: in_max_n_fraction
  doc: ":   maximum fraction of Ns in a rearranged segment for it to\nnot be ignored\
    \ as missing data. [default = 1]"
  type: long?
  inputBinding:
    prefix: --maxNFraction
- id: in_parent_file
  doc: ":     bed file to write rearrangements (deletions and\nduplications) in reference's\
    \ parent genome coordinates (or\nstdout) [default = \"\"]"
  type: File?
  inputBinding:
    prefix: --parentFile
- id: in_ref_file
  doc: ":        bed file to write structural rearrangements in reference\ngenome\
    \ coordinates (or stdout) [default = \"\"]"
  type: File?
  inputBinding:
    prefix: --refFile
- id: in_ref_sequence
  doc: ":    name of reference sequence within reference genome (all\nsequences if\
    \ empty) [default = \"\"]"
  type: string?
  inputBinding:
    prefix: --refSequence
- id: in_ref_targets
  doc: ":     bed file coordinates of intervals in the reference genome\nto analyze\
    \ [default = \"\"]"
  type: File?
  inputBinding:
    prefix: --refTargets
- id: in_snp_file
  doc: ":        bed file write point mutations to in reference genome\ncoordinates\
    \ (or stdout) [default = \"\"]"
  type: File?
  inputBinding:
    prefix: --snpFile
- id: in_start
  doc: ":          coordinate within reference genome (or sequence if\nspecified)\
    \ to start at [default = 0]\n"
  type: long?
  inputBinding:
    prefix: --start
- id: in_parent_dot
  doc: 'USAGE:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- halBranchMutations
