class: CommandLineTool
id: hal2maf.cwl
inputs:
- id: in_append
  doc: ":                      append to instead of overwrite output file. [default\
    \ =\n0]"
  type: File?
  inputBinding:
    prefix: --append
- id: in_cache_bytes
  doc: ":          maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long?
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':            number of metadata slots in hdf5 cache [default = 113]'
  type: long?
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":            number of regular slots in hdf5 cache.  should be a\nprime number\
    \ ~= 10 * DefaultCacheRDCBytes / chunk\n[default = 599999]"
  type: long?
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':             w0 parameter fro hdf5 cache [default = 0.75]'
  type: long?
  inputBinding:
    prefix: --cacheW0
- id: in_global
  doc: ":                      output all columns in alignment, ignoring refGenome,\n\
    refSequence, etc. flags [default = 0]"
  type: boolean?
  inputBinding:
    prefix: --global
- id: in_in_memory
  doc: ":                    load all data in memory (and disable hdf5 cache)\n[default\
    \ = 0]"
  type: boolean?
  inputBinding:
    prefix: --inMemory
- id: in_length
  doc: ":              length of the reference genome (or sequence if\nspecified)\
    \ to convert.  If set to 0, the entire thing\nis converted [default = 0]"
  type: long?
  inputBinding:
    prefix: --length
- id: in_max_block_len
  doc: ':         maximum length of MAF block in output [default = 1000]'
  type: long?
  inputBinding:
    prefix: --maxBlockLen
- id: in_max_ref_gap
  doc: ':           maximum gap length in reference [default = 0]'
  type: long?
  inputBinding:
    prefix: --maxRefGap
- id: in_no_ancestors
  doc: ":                 don't write ancestral sequences. IMPORTANT: Must be\nused\
    \ in conjunction with --refGenome to set a\nnon-ancestral genome as the reference\
    \ because the\ndefault reference is the root. [default = 0]"
  type: boolean?
  inputBinding:
    prefix: --noAncestors
- id: in_no_dupes
  doc: ':                     ignore paralogy edges [default = 0]'
  type: boolean?
  inputBinding:
    prefix: --noDupes
- id: in_only_orthologs
  doc: ":               make only orthologs to the reference appear in the MAF\nblocks\
    \ [default = 0]"
  type: boolean?
  inputBinding:
    prefix: --onlyOrthologs
- id: in_only_sequence_names
  doc: ":           use only sequence names for output names.  By default,\nthe UCSC\
    \ convention of Genome.Sequence is used"
  type: boolean?
  inputBinding:
    prefix: --onlySequenceNames
- id: in_print_tree
  doc: ':                   print a gene tree for every block [default = 0]'
  type: boolean?
  inputBinding:
    prefix: --printTree
- id: in_ref_genome
  doc: ":           name of reference genome (root if empty) [default =\n\"\"]"
  type: string?
  inputBinding:
    prefix: --refGenome
- id: in_ref_sequence
  doc: ":         name of reference sequence within reference genome\n(all sequences\
    \ if empty) [default = \"\"]"
  type: string?
  inputBinding:
    prefix: --refSequence
- id: in_ref_targets
  doc: ":          bed file coordinates of intervals in the reference\ngenome to export\
    \ (or \"stdin\" to pipe from standard\ninput) [default = \"\"]"
  type: File?
  inputBinding:
    prefix: --refTargets
- id: in_root_genome
  doc: ':          name of root genome (none if empty) [default = ""]'
  type: string?
  inputBinding:
    prefix: --rootGenome
- id: in_start
  doc: ":               coordinate within reference genome (or sequence if\nspecified)\
    \ to start at [default = 0]"
  type: long?
  inputBinding:
    prefix: --start
- id: in_target_genomes
  doc: ":       comma-separated (no spaces) list of target genomes\n(others are excluded)\
    \ (vist all if empty) [default =\n\"\"]"
  type: string?
  inputBinding:
    prefix: --targetGenomes
- id: in_unique
  doc: ":                      only write column whose left-most reference coordinate\n\
    is in the specified range.  this is used to insure"
  type: boolean?
  inputBinding:
    prefix: --unique
- id: in_hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_maf_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_append
  doc: ":                      append to instead of overwrite output file. [default\
    \ =\n0]"
  type: File?
  outputBinding:
    glob: $(inputs.in_append)
hints: []
cwlVersion: v1.1
baseCommand:
- hal2maf
