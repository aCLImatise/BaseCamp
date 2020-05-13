class: CommandLineTool
id: dRep_compare.cwl
inputs:
- id: work_directory
  doc: Directory where data and output     *** USE THE SAME WORK DIRECTORY FOR ALL
    DREP OPERATIONS ***
  type: string
  inputBinding:
    position: 0
- id: processors
  doc: 'threads (default: 6)'
  type: string
  inputBinding:
    prefix: --processors
- id: debug
  doc: 'make extra debugging output (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
- id: mash_sketch
  doc: 'MASH sketch size (default: 1000)'
  type: string
  inputBinding:
    prefix: --MASH_sketch
- id: s_algorithm
  doc: 'Algorithm for secondary clustering comaprisons: fastANI = Kmer-based approach;
    very fast ANImf   = (DEFAULT) Align whole genomes with nucmer; filter alignment;
    compare aligned regions ANIn    = Align whole genomes with nucmer; compare aligned
    regions gANI    = Identify and align ORFs; compare aligned ORFS goANI   = Open
    source version of gANI; requires nsmimscan (default: ANImf)'
  type: string
  inputBinding:
    prefix: --S_algorithm
- id: n_preset
  doc: 'Presets to pass to nucmer tight   = only align highly conserved regions normal  =
    default ANIn parameters (default: normal)'
  type: string
  inputBinding:
    prefix: --n_PRESET
- id: p_ani
  doc: 'ANI threshold to form primary (MASH) clusters (default: 0.9)'
  type: string
  inputBinding:
    prefix: --P_ani
- id: s_ani
  doc: 'ANI threshold to form secondary clusters (default: 0.99)'
  type: string
  inputBinding:
    prefix: --S_ani
- id: skip_mash
  doc: 'Skip MASH clustering, just do secondary clustering on all genomes (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --SkipMash
- id: skip_secondary
  doc: 'Skip secondary clustering, just perform MASH clustering (default: False)'
  type: boolean
  inputBinding:
    prefix: --SkipSecondary
- id: cov_thresh
  doc: 'Minmum level of overlap between genomes when doing secondary comparisons (default:
    0.1)'
  type: string
  inputBinding:
    prefix: --cov_thresh
- id: coverage_method
  doc: 'Method to calculate coverage of an alignment (for ANIn/ANImf only; gANI and
    fastANI can only do larger method) total   = 2*(aligned length) / (sum of total
    genome lengths) larger  = max((aligned length / genome 1), (aligned_length / genome2))
    (default: larger)'
  type: string
  inputBinding:
    prefix: --coverage_method
- id: cluster_alg
  doc: 'Algorithm used to cluster genomes (passed to scipy.cluster.hierarchy.linkage
    (default: average)'
  type: string
  inputBinding:
    prefix: --clusterAlg
- id: run_tax
  doc: 'generate taxonomy information (Tdb) (default: False)'
  type: boolean
  inputBinding:
    prefix: --run_tax
- id: tax_method
  doc: 'Method of determining taxonomy percent = The most descriptive taxonimic level
    with at least (per) hits max     = The centrifuge taxonomic level with the most
    overall hits (default: percent)'
  type: string
  inputBinding:
    prefix: --tax_method
- id: percent
  doc: 'minimum percent for percent method (default: 50)'
  type: string
  inputBinding:
    prefix: --percent
- id: cent_index
  doc: 'path to centrifuge index (for example, /home/mattolm/download/centrifuge/indices/b+h+v
    (default: None)'
  type: string
  inputBinding:
    prefix: --cent_index
- id: warn_dist
  doc: 'How far from the threshold to throw cluster warnings (default: 0.25)'
  type: string
  inputBinding:
    prefix: --warn_dist
- id: warn_sim
  doc: 'Similarity threshold for warnings between dereplicated genomes (default: 0.98)'
  type: string
  inputBinding:
    prefix: --warn_sim
- id: warn_aln
  doc: 'Minimum aligned fraction for warnings between dereplicated genomes (ANIn)
    (default: 0.25)'
  type: string
  inputBinding:
    prefix: --warn_aln
- id: g
  doc: '[GENOMES [GENOMES ...]], --genomes [GENOMES [GENOMES ...]] genomes to cluster
    in .fasta format; can pass a number of .fasta files or a single text file listing
    the locations of all .fasta files (default: None)'
  type: boolean
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- dRep
- compare
