class: CommandLineTool
id: dRep_dereplicate.cwl
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
- id: in_genomes_filter_ifbdb
  doc: "[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\ngenomes to filter\
    \ in .fasta format. Not necessary if\nBdb or Wdb already exist. Can also input\
    \ a text file\nwith paths to genomes, which results in fewer OS\nissues than wildcard\
    \ expansion (default: None)"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_length
  doc: 'Minimum genome length (default: 50000)'
  type: long?
  inputBinding:
    prefix: --length
- id: in_completeness
  doc: 'Minumum genome completeness (default: 75)'
  type: long?
  inputBinding:
    prefix: --completeness
- id: in_contamination
  doc: 'Maximum genome contamination (default: 25)'
  type: long?
  inputBinding:
    prefix: --contamination
- id: in_ignore_genome_quality
  doc: "Don't run checkM or do any quality filtering. NOT\nRECOMMENDED! This is useful\
    \ for use with\nbacteriophages or eukaryotes or things where checkM\nscoring does\
    \ not work. Will only choose genomes based\non length and N50 (default: False)"
  type: boolean?
  inputBinding:
    prefix: --ignoreGenomeQuality
- id: in_genome_info
  doc: "location of .csv file containing quality information\non the genomes. Must\
    \ contain: [\"genome\"(basename of\n.fasta file of that genome), \"completeness\"\
    (0-100\nvalue for completeness of the genome),\n\"contamination\"(0-100 value\
    \ of the contamination of\nthe genome)] (default: None)"
  type: File?
  inputBinding:
    prefix: --genomeInfo
- id: in_check_m_method
  doc: "Either lineage_wf (more accurate) or taxonomy_wf\n(faster) (default: lineage_wf)"
  type: string?
  inputBinding:
    prefix: --checkM_method
- id: in_set_recursion
  doc: "Increases the python recursion limit. NOT RECOMMENDED\nunless checkM is crashing\
    \ due to recursion issues.\nRecommended to set to 2000 if needed, but setting\
    \ this\ncould crash python (default: 0)"
  type: long?
  inputBinding:
    prefix: --set_recursion
- id: in_s_algorithm
  doc: "Algorithm for secondary clustering comaprisons:\nfastANI = Kmer-based approach;\
    \ very fast\nANImf   = (DEFAULT) Align whole genomes with nucmer; filter alignment;\
    \ compare aligned regions\nANIn    = Align whole genomes with nucmer; compare\
    \ aligned regions\ngANI    = Identify and align ORFs; compare aligned ORFS\ngoANI\
    \   = Open source version of gANI; requires nsmimscan\n(default: ANImf)"
  type: string?
  inputBinding:
    prefix: --S_algorithm
- id: in_mash_sketch
  doc: 'MASH sketch size (default: 1000)'
  type: long?
  inputBinding:
    prefix: --MASH_sketch
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
- id: in_multi_round_primary_clustering
  doc: "Cluster each primary clunk separately and merge at the\nend with single linkage.\
    \ Decreases RAM usage and\nincreases speed, and the cost of a minor loss in\n\
    precision and the inability to plot\nprimary_clustering_dendrograms. Especially\
    \ helpful\nwhen clustering 5000+ genomes. Will be done with\nsingle linkage clustering\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --multiround_primary_clustering
- id: in_primary_chunksize
  doc: "Impacts multiround_primary_clustering. If you have\nmore than this many genomes,\
    \ process them in chunks of\nthis size. (default: 5000)"
  type: long?
  inputBinding:
    prefix: --primary_chunksize
- id: in_greedy_secondary_clustering
  doc: "Use a heuristic to avoid pair-wise comparisons when\ndoing secondary clustering.\
    \ Will be done with single\nlinkage clustering. Only works for fastANI S_algorithm\n\
    option at the moment (default: False)"
  type: boolean?
  inputBinding:
    prefix: --greedy_secondary_clustering
- id: in_run_tertiary_clustering
  doc: "Run an additional round of clustering on the final\ngenome set. This is especially\
    \ useful when greedy\nclustering is performed and/or to handle cases where\nsimilar\
    \ genomes end up in different primary clusters.\nOnly works with dereplicate,\
    \ not compare. (default:\nFalse)"
  type: boolean?
  inputBinding:
    prefix: --run_tertiary_clustering
- id: in_completeness_weight
  doc: 'completeness weight (default: 1)'
  type: long?
  inputBinding:
    prefix: --completeness_weight
- id: in_contamination_weight
  doc: 'contamination weight (default: 5)'
  type: long?
  inputBinding:
    prefix: --contamination_weight
- id: in_strain_heterogeneity_weight
  doc: 'strain heterogeneity weight (default: 1)'
  type: long?
  inputBinding:
    prefix: --strain_heterogeneity_weight
- id: in_n_five_zero_weight
  doc: 'weight of log(genome N50) (default: 0.5)'
  type: long?
  inputBinding:
    prefix: --N50_weight
- id: in_size_weight
  doc: 'weight of log(genome size) (default: 0)'
  type: long?
  inputBinding:
    prefix: --size_weight
- id: in_centrality_weight
  doc: 'Weight of (centrality - S_ani) (default: 1)'
  type: long?
  inputBinding:
    prefix: --centrality_weight
- id: in_extra_weight_table
  doc: "Path to a tab-separated file with two-columns, no\nheaders, listing genome\
    \ and extra score to apply to\nthat genome (default: None)"
  type: File?
  inputBinding:
    prefix: --extra_weight_table
- id: in_warn_dist
  doc: "How far from the threshold to throw cluster warnings\n(default: 0.25)"
  type: double?
  inputBinding:
    prefix: --warn_dist
- id: in_warn_sim
  doc: "Similarity threshold for warnings between dereplicated\ngenomes (default:\
    \ 0.98)"
  type: double?
  inputBinding:
    prefix: --warn_sim
- id: in_warn_aln
  doc: "Minimum aligned fraction for warnings between\ndereplicated genomes (ANIn)\
    \ (default: 0.25)"
  type: double?
  inputBinding:
    prefix: --warn_aln
- id: in_genomes
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/drep:3.1.1--py_0
cwlVersion: v1.1
baseCommand:
- dRep
- dereplicate
