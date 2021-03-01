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
- id: in_run_tax
  doc: 'generate taxonomy information (Tdb) (default: False)'
  type: boolean?
  inputBinding:
    prefix: --run_tax
- id: in_tax_method
  doc: "Method of determining taxonomy\npercent = The most descriptive taxonimic level\
    \ with at least (per) hits\nmax     = The centrifuge taxonomic level with the\
    \ most overall hits (default: percent)"
  type: string?
  inputBinding:
    prefix: --tax_method
- id: in_percent
  doc: 'minimum percent for percent method (default: 50)'
  type: long?
  inputBinding:
    prefix: --percent
- id: in_cent_index
  doc: "path to centrifuge index (for example,\n/home/mattolm/download/centrifuge/indices/b+h+v\n\
    (default: None)"
  type: File?
  inputBinding:
    prefix: --cent_index
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
- id: in_genomes_cluster_format
  doc: "[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]]\ngenomes to cluster\
    \ in .fasta format; can pass a number\nof .fasta files or a single text file listing\
    \ the\nlocations of all .fasta files (default: None)"
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_check_m_method
  doc: "Either lineage_wf (more accurate) or taxonomy_wf\n(faster) (default: lineage_wf)"
  type: string?
  inputBinding:
    prefix: --checkM_method
- id: in_genome_info
  doc: "location of .csv file containing quality information\non the genomes. Must\
    \ contain: [\"genome\"(basename of\n.fasta file of that genome), \"completeness\"\
    (0-100\nvalue for completeness of the genome),\n\"contamination\"(0-100 value\
    \ of the contamination of\nthe genome)] (default: None)"
  type: File?
  inputBinding:
    prefix: --genomeInfo
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dRep
- dereplicate
