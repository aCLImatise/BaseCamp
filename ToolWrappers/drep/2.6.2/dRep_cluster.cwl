class: CommandLineTool
id: dRep_cluster.cwl
inputs:
- id: in_processors
  doc: 'threads (default: 6)'
  type: long?
  inputBinding:
    prefix: --processors
- id: in_debug
  doc: 'make extra debugging output (default: False)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_mash_sketch
  doc: 'MASH sketch size (default: 1000)'
  type: long?
  inputBinding:
    prefix: --MASH_sketch
- id: in_s_algorithm
  doc: "Algorithm for secondary clustering comaprisons:\nfastANI = Kmer-based approach;\
    \ very fast\nANImf   = (DEFAULT) Align whole genomes with nucmer; filter alignment;\
    \ compare aligned regions\nANIn    = Align whole genomes with nucmer; compare\
    \ aligned regions\ngANI    = Identify and align ORFs; compare aligned ORFS\ngoANI\
    \   = Open source version of gANI; requires nsmimscan\n(default: ANImf)"
  type: string?
  inputBinding:
    prefix: --S_algorithm
- id: in_n_preset
  doc: "Presets to pass to nucmer\ntight   = only align highly conserved regions\n\
    normal  = default ANIn parameters (default: normal)"
  type: string?
  inputBinding:
    prefix: --n_PRESET
- id: in_p_ani
  doc: "ANI threshold to form primary (MASH) clusters\n(default: 0.9)"
  type: double?
  inputBinding:
    prefix: --P_ani
- id: in_s_ani
  doc: "ANI threshold to form secondary clusters (default:\n0.99)"
  type: double?
  inputBinding:
    prefix: --S_ani
- id: in_skip_mash
  doc: "Skip MASH clustering, just do secondary clustering on\nall genomes (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --SkipMash
- id: in_skip_secondary
  doc: "Skip secondary clustering, just perform MASH\nclustering (default: False)"
  type: boolean?
  inputBinding:
    prefix: --SkipSecondary
- id: in_cov_thresh
  doc: "Minmum level of overlap between genomes when doing\nsecondary comparisons\
    \ (default: 0.1)"
  type: double?
  inputBinding:
    prefix: --cov_thresh
- id: in_coverage_method
  doc: "Method to calculate coverage of an alignment\n(for ANIn/ANImf only; gANI and\
    \ fastANI can only do larger method)\ntotal   = 2*(aligned length) / (sum of total\
    \ genome lengths)\nlarger  = max((aligned length / genome 1), (aligned_length\
    \ / genome2))\n(default: larger)"
  type: string?
  inputBinding:
    prefix: --coverage_method
- id: in_cluster_alg
  doc: "Algorithm used to cluster genomes (passed to\nscipy.cluster.hierarchy.linkage\
    \ (default: average)"
  type: string?
  inputBinding:
    prefix: --clusterAlg
- id: in_genomes_cluster_format
  doc: "[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\ngenomes to cluster\
    \ in .fasta format. Not necessary if\nalready loaded sequences with the \"filter\"\
    \ operation\n(default: None)\n"
  type: boolean?
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dRep
- cluster
