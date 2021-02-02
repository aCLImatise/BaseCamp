class: CommandLineTool
id: dRep_compare.cwl
inputs:
- id: in_processors
  doc: 'threads (default: 6)'
  type: long
  inputBinding:
    prefix: --processors
- id: in_debug
  doc: 'make extra debugging output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: in_mash_sketch
  doc: 'MASH sketch size (default: 1000)'
  type: long
  inputBinding:
    prefix: --MASH_sketch
- id: in_s_algorithm
  doc: "Algorithm for secondary clustering comaprisons:\nfastANI = Kmer-based approach;\
    \ very fast\nANImf   = (DEFAULT) Align whole genomes with nucmer; filter alignment;\
    \ compare aligned regions\nANIn    = Align whole genomes with nucmer; compare\
    \ aligned regions\ngANI    = Identify and align ORFs; compare aligned ORFS\ngoANI\
    \   = Open source version of gANI; requires nsmimscan\n(default: ANImf)"
  type: string
  inputBinding:
    prefix: --S_algorithm
- id: in_n_preset
  doc: "Presets to pass to nucmer\ntight   = only align highly conserved regions\n\
    normal  = default ANIn parameters (default: normal)"
  type: string
  inputBinding:
    prefix: --n_PRESET
- id: in_p_ani
  doc: "ANI threshold to form primary (MASH) clusters\n(default: 0.9)"
  type: double
  inputBinding:
    prefix: --P_ani
- id: in_s_ani
  doc: "ANI threshold to form secondary clusters (default:\n0.99)"
  type: double
  inputBinding:
    prefix: --S_ani
- id: in_skip_mash
  doc: "Skip MASH clustering, just do secondary clustering on\nall genomes (default:\
    \ False)"
  type: boolean
  inputBinding:
    prefix: --SkipMash
- id: in_skip_secondary
  doc: "Skip secondary clustering, just perform MASH\nclustering (default: False)"
  type: boolean
  inputBinding:
    prefix: --SkipSecondary
- id: in_cov_thresh
  doc: "Minmum level of overlap between genomes when doing\nsecondary comparisons\
    \ (default: 0.1)"
  type: double
  inputBinding:
    prefix: --cov_thresh
- id: in_coverage_method
  doc: "Method to calculate coverage of an alignment\n(for ANIn/ANImf only; gANI and\
    \ fastANI can only do larger method)\ntotal   = 2*(aligned length) / (sum of total\
    \ genome lengths)\nlarger  = max((aligned length / genome 1), (aligned_length\
    \ / genome2))\n(default: larger)"
  type: string
  inputBinding:
    prefix: --coverage_method
- id: in_cluster_alg
  doc: "Algorithm used to cluster genomes (passed to\nscipy.cluster.hierarchy.linkage\
    \ (default: average)"
  type: string
  inputBinding:
    prefix: --clusterAlg
- id: in_run_tax
  doc: 'generate taxonomy information (Tdb) (default: False)'
  type: boolean
  inputBinding:
    prefix: --run_tax
- id: in_tax_method
  doc: "Method of determining taxonomy\npercent = The most descriptive taxonimic level\
    \ with at least (per) hits\nmax     = The centrifuge taxonomic level with the\
    \ most overall hits (default: percent)"
  type: string
  inputBinding:
    prefix: --tax_method
- id: in_percent
  doc: 'minimum percent for percent method (default: 50)'
  type: long
  inputBinding:
    prefix: --percent
- id: in_cent_index
  doc: "path to centrifuge index (for example,\n/home/mattolm/download/centrifuge/indices/b+h+v\n\
    (default: None)"
  type: File
  inputBinding:
    prefix: --cent_index
- id: in_warn_dist
  doc: "How far from the threshold to throw cluster warnings\n(default: 0.25)"
  type: double
  inputBinding:
    prefix: --warn_dist
- id: in_warn_sim
  doc: "Similarity threshold for warnings between dereplicated\ngenomes (default:\
    \ 0.98)"
  type: double
  inputBinding:
    prefix: --warn_sim
- id: in_warn_aln
  doc: "Minimum aligned fraction for warnings between\ndereplicated genomes (ANIn)\
    \ (default: 0.25)"
  type: double
  inputBinding:
    prefix: --warn_aln
- id: in_genomes_cluster_fasta
  doc: "[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\ngenomes to cluster\
    \ in .fasta format; can pass a number\nof .fasta files or a single text file listing\
    \ the\nlocations of all .fasta files (default: None)"
  type: boolean
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dRep
- compare
