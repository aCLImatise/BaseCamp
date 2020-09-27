class: CommandLineTool
id: halStats.cwl
inputs:
- id: in_all_coverage
  doc: ":              print histogram of coverage from all genomes to all\ngenomes\
    \ [default = 0]"
  type: boolean
  inputBinding:
    prefix: --allCoverage
- id: in_base_comp
  doc: ":         print base composition for given genome by sampling every\nstep\
    \ bases. Parameter value is of the form genome,step.\nEx: --baseComp human,1000.\
    \  The ouptut is of the form"
  type: long
  inputBinding:
    prefix: --baseComp
- id: in_bed_sequences
  doc: ":     print sequences of given genome in bed format [default =\n\"\"]"
  type: string
  inputBinding:
    prefix: --bedSequences
- id: in_bottom_segments
  doc: ":   print coordinates of all bottom segments of given genome\nin BED format.\
    \ [default = \"\"]"
  type: string
  inputBinding:
    prefix: --bottomSegments
- id: in_branch_length
  doc: ":     print branch length between given genome and its parent\nin the tree\
    \ [default = \"\"]"
  type: long
  inputBinding:
    prefix: --branchLength
- id: in_branches
  doc: ":                 print list of branches. Each branch is specified by the\n\
    child genome [default = 0]"
  type: boolean
  inputBinding:
    prefix: --branches
- id: in_cache_bytes
  doc: ":       maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':         number of metadata slots in hdf5 cache [default = 113]'
  type: long
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":         number of regular slots in hdf5 cache.  should be a prime\nnumber\
    \ ~= 10 * DefaultCacheRDCBytes / chunk [default ="
  type: long
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':          w0 parameter fro hdf5 cache [default = 0.75]'
  type: long
  inputBinding:
    prefix: --cacheW0
- id: in_children
  doc: ':         print names of children of given genome [default = ""]'
  type: string
  inputBinding:
    prefix: --children
- id: in_chrom_sizes
  doc: ":       print the name and length of each sequence in a given\ngenome.  This\
    \ is a subset of the information returned by\n--sequenceStats but is useful because\
    \ it is in the format\nused by wigToBigWig [default = \"\"]"
  type: long
  inputBinding:
    prefix: --chromSizes
- id: in_coverage
  doc: ":         print histogram of coverage of a genome with all genomes\n[default\
    \ = \"\"]"
  type: string
  inputBinding:
    prefix: --coverage
- id: in_genome_metadata
  doc: ":   print metadata for given genome, one entry per line,\ntab-seperated. [default\
    \ = \"\"]"
  type: string
  inputBinding:
    prefix: --genomeMetaData
- id: in_genomes
  doc: ':                  print only a list of genomes in alignment [default = 0]'
  type: boolean
  inputBinding:
    prefix: --genomes
- id: in_in_memory
  doc: ":                 load all data in memory (and disable hdf5 cache) [default\n\
    = 0]"
  type: boolean
  inputBinding:
    prefix: --inMemory
- id: in_num_segments
  doc: ":      print numTopSegments numBottomSegments for given genome.\n[default\
    \ = \"\"]"
  type: string
  inputBinding:
    prefix: --numSegments
- id: in_parent
  doc: ':           print name of parent of given genome [default = ""]'
  type: string
  inputBinding:
    prefix: --parent
- id: in_percentid
  doc: ":        print % ID of a genome with all other genomes.Only\nnon-duplicated\
    \ and unambiguous sites areconsidered\n[default = \"\"]"
  type: string
  inputBinding:
    prefix: --percentID
- id: in_root
  doc: ':                     print root genome name [default = 0]'
  type: boolean
  inputBinding:
    prefix: --root
- id: in_sequence_stats
  doc: ":    print stats for each sequence in given genome [default =\n\"\"]"
  type: string
  inputBinding:
    prefix: --sequenceStats
- id: in_sequences
  doc: ':        print list of sequences in given genome [default = ""]'
  type: string
  inputBinding:
    prefix: --sequences
- id: in_span
  doc: ":             print branches on path (or spanning tree) between comma\nseparated\
    \ list of genomes [default = \"\"]"
  type: File
  inputBinding:
    prefix: --span
- id: in_span_root
  doc: ":         print genomes on path(or spanning tree) between comma\nseparated\
    \ list of genomes.  Different from --spanonly in\nthat the spanning tree root\
    \ is also given [default = \"\"]"
  type: File
  inputBinding:
    prefix: --spanRoot
- id: in_top_segments
  doc: ":      print coordinates of all top segments of given genome in\nBED format.\
    \ [default = \"\"]"
  type: string
  inputBinding:
    prefix: --topSegments
- id: in_tree
  doc: ':                     print only the NEWICK tree [default = 0]'
  type: boolean
  inputBinding:
    prefix: --tree
- id: in_hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- halStats
