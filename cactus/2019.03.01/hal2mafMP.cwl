class: CommandLineTool
id: hal2mafMP.py.cwl
inputs:
- id: hal_file
  doc: Input HAL file
  type: string
  inputBinding:
    position: 0
- id: maf_file
  doc: Output MAF file
  type: string
  inputBinding:
    position: 1
- id: num_proc
  doc: 'Maximum number of processes to create. If neither --sliceSize or --splitBySequence
    are specified, then the reference genome will be sliced to require --numProc jobs
    (default: 1)'
  type: string
  inputBinding:
    prefix: --numProc
- id: slice_size
  doc: 'Maximum slice of reference sequence to process in a single process. (default:
    None)'
  type: string
  inputBinding:
    prefix: --sliceSize
- id: split_by_sequence
  doc: 'Create an output MAF for each sequence in the reference genome. Output files
    will have the format mafFile_sequenceName.maf (default: False)'
  type: boolean
  inputBinding:
    prefix: --splitBySequence
- id: small_size
  doc: 'If --splitBySequence is used, then all sequences with length less than smallSize
    will be lumped into a single output MAF called "mafFile_small.maf" (default: 0)'
  type: string
  inputBinding:
    prefix: --smallSize
- id: cache_mdc
  doc: 'number of metadata slots in hdf5 cache (default: None)'
  type: string
  inputBinding:
    prefix: --cacheMDC
- id: cacher_dc
  doc: 'number of regular slots in hdf5 cache. should be a prime number ~= 10 * DefaultCacheRDCBytes
    / chunk (default: None)'
  type: string
  inputBinding:
    prefix: --cacheRDC
- id: cache_bytes
  doc: 'maximum size in bytes of regular hdf5 cache (default: None)'
  type: string
  inputBinding:
    prefix: --cacheBytes
- id: cache_w0
  doc: 'w0 parameter fro hdf5 cache (default: None)'
  type: string
  inputBinding:
    prefix: --cacheW0
- id: in_memory
  doc: 'load all data in memory (& disable hdf5 cache) (default: False)'
  type: boolean
  inputBinding:
    prefix: --inMemory
- id: ref_genome
  doc: 'name of reference genome (root if empty) (default: None)'
  type: string
  inputBinding:
    prefix: --refGenome
- id: ref_sequence
  doc: 'name of reference sequence within reference genome (all sequences if empty)
    (default: None)'
  type: string
  inputBinding:
    prefix: --refSequence
- id: ref_targets
  doc: 'bed file coordinates of intervals in the reference genome to export (default:
    None)'
  type: string
  inputBinding:
    prefix: --refTargets
- id: start
  doc: 'coordinate within reference genome (or sequence if specified) to start at
    (default: None)'
  type: string
  inputBinding:
    prefix: --start
- id: length
  doc: 'length of the reference genome (or sequence if specified) to convert. If set
    to 0, the entire thing is converted (default: None)'
  type: long
  inputBinding:
    prefix: --length
- id: root_genome
  doc: 'name of root genome (none if empty) (default: None)'
  type: string
  inputBinding:
    prefix: --rootGenome
- id: target_genomes
  doc: 'comma-separated (no spaces) list of target genomes (others are excluded) (vist
    all if empty) (default: None)'
  type: string
  inputBinding:
    prefix: --targetGenomes
- id: max_ref_gap
  doc: 'maximum gap length in reference (default: None)'
  type: long
  inputBinding:
    prefix: --maxRefGap
- id: no_dupes
  doc: 'ignore paralogy edges (default: False)'
  type: boolean
  inputBinding:
    prefix: --noDupes
- id: no_ancestors
  doc: "don't write ancestral sequences. IMPORTANT: Must be used in conjunction with\
    \ --refGenome to set a non- ancestral genome as the reference because the default\
    \ reference is the root. (default: False)"
  type: boolean
  inputBinding:
    prefix: --noAncestors
- id: only_sequence_names
  doc: 'use sequence names for output names. By default, the UCSC convention of Genome.Sequence
    is used (default: False)'
  type: boolean
  inputBinding:
    prefix: --onlySequenceNames
outputs: []
cwlVersion: v1.1
baseCommand:
- hal2mafMP.py
