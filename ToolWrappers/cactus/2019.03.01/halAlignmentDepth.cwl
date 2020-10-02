class: CommandLineTool
id: halAlignmentDepth.cwl
inputs:
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
- id: in_count_dupes
  doc: ":              count each other *position* each base aligns to, rather\nthan\
    \ the number of unique genomes, including paralogies so\na genome can be counted\
    \  multiple times.  This will give\nthe height of the MAF column created with\
    \ hal2maf.\n[default = 0]"
  type: boolean
  inputBinding:
    prefix: --countDupes
- id: in_in_memory
  doc: ":                load all data in memory (and disable hdf5 cache) [default\n\
    = 0]"
  type: boolean
  inputBinding:
    prefix: --inMemory
- id: in_length
  doc: ":          length of the reference genome (or sequence if specified)\nto convert.\
    \  If set to 0, the entire thing is converted\n[default = 0]"
  type: long
  inputBinding:
    prefix: --length
- id: in_no_ancestors
  doc: ':             do not count ancestral genomes. [default = 0]'
  type: boolean
  inputBinding:
    prefix: --noAncestors
- id: in_out_wiggle
  doc: ':       output wig file (stdout if none) [default = stdout]'
  type: File
  inputBinding:
    prefix: --outWiggle
- id: in_ref_sequence
  doc: ":     sequence name to export (all sequences by default)\n[default = \"\"]"
  type: string
  inputBinding:
    prefix: --refSequence
- id: in_root_genome
  doc: ':      name of root genome (none if empty) [default = ""]'
  type: string
  inputBinding:
    prefix: --rootGenome
- id: in_start
  doc: ":           coordinate within reference genome (or sequence if\nspecified)\
    \ to start at [default = 0]"
  type: long
  inputBinding:
    prefix: --start
- id: in_step
  doc: ':            step size [default = 1]'
  type: long
  inputBinding:
    prefix: --step
- id: in_target_genomes
  doc: ":   comma-separated (no spaces) list of target genomes (others\nare excluded)\
    \ (vist all if empty) [default = \"\"]\n"
  type: string
  inputBinding:
    prefix: --targetGenomes
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_wiggle
  doc: ':       output wig file (stdout if none) [default = stdout]'
  type: File
  outputBinding:
    glob: $(inputs.in_out_wiggle)
cwlVersion: v1.1
baseCommand:
- halAlignmentDepth
