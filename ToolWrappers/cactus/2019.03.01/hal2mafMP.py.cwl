class: CommandLineTool
id: hal2mafMP.py.cwl
inputs:
- id: in_num_proc
  doc: Maximum number of processes to create. If neither
  type: long
  inputBinding:
    prefix: --numProc
- id: in_split_by_sequence
  doc: specified, then
  type: string
  inputBinding:
    prefix: --splitBySequence
- id: in_small_size
  doc: "If --splitBySequence is used, then all sequences with\nlength less than smallSize\
    \ will be lumped into a\nsingle output MAF called \"mafFile_small.maf\" (default:\n\
    0)"
  type: long
  inputBinding:
    prefix: --smallSize
- id: in_cache_mdc
  doc: 'number of metadata slots in hdf5 cache (default: None)'
  type: long
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: "number of regular slots in hdf5 cache. should be a\nprime number ~= 10 * DefaultCacheRDCBytes\
    \ / chunk\n(default: None)"
  type: long
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_bytes
  doc: "maximum size in bytes of regular hdf5 cache (default:\nNone)"
  type: long
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_w_zero
  doc: 'w0 parameter fro hdf5 cache (default: None)'
  type: long
  inputBinding:
    prefix: --cacheW0
- id: in_in_memory
  doc: "load all data in memory (& disable hdf5 cache)\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --inMemory
- id: in_ref_genome
  doc: "name of reference genome (root if empty) (default:\nNone)"
  type: string
  inputBinding:
    prefix: --refGenome
- id: in_ref_sequence
  doc: "name of reference sequence within reference genome\n(all sequences if empty)\
    \ (default: None)"
  type: string
  inputBinding:
    prefix: --refSequence
- id: in_ref_targets
  doc: "bed file coordinates of intervals in the reference\ngenome to export (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --refTargets
- id: in_start
  doc: "coordinate within reference genome (or sequence if\nspecified) to start at\
    \ (default: None)"
  type: string
  inputBinding:
    prefix: --start
- id: in_length
  doc: "length of the reference genome (or sequence if\nspecified) to convert. If\
    \ set to 0, the entire thing\nis converted (default: None)"
  type: long
  inputBinding:
    prefix: --length
- id: in_root_genome
  doc: 'name of root genome (none if empty) (default: None)'
  type: string
  inputBinding:
    prefix: --rootGenome
- id: in_target_genomes
  doc: "comma-separated (no spaces) list of target genomes\n(others are excluded)\
    \ (vist all if empty) (default:\nNone)"
  type: string
  inputBinding:
    prefix: --targetGenomes
- id: in_max_ref_gap
  doc: 'maximum gap length in reference (default: None)'
  type: long
  inputBinding:
    prefix: --maxRefGap
- id: in_no_dupes
  doc: 'ignore paralogy edges (default: False)'
  type: boolean
  inputBinding:
    prefix: --noDupes
- id: in_no_ancestors
  doc: "don't write ancestral sequences. IMPORTANT: Must be\nused in conjunction with\
    \ --refGenome to set a non-\nancestral genome as the reference because the default\n\
    reference is the root. (default: False)"
  type: boolean
  inputBinding:
    prefix: --noAncestors
- id: in_only_sequence_names
  doc: "use sequence names for output names. By default, the\nUCSC convention of Genome.Sequence\
    \ is used (default:\nFalse)\n"
  type: boolean
  inputBinding:
    prefix: --onlySequenceNames
- id: in_hal_file
  doc: Input HAL file
  type: string
  inputBinding:
    position: 0
- id: in_maf_file
  doc: Output MAF file
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hal2mafMP.py
