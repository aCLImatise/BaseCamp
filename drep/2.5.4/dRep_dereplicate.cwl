class: CommandLineTool
id: dRep_dereplicate.cwl
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
- id: length
  doc: 'Minimum genome length (default: 50000)'
  type: long
  inputBinding:
    prefix: --length
- id: completeness
  doc: 'Minumum genome completeness (default: 75)'
  type: string
  inputBinding:
    prefix: --completeness
- id: contamination
  doc: 'Maximum genome contamination (default: 25)'
  type: string
  inputBinding:
    prefix: --contamination
- id: ignore_genome_quality
  doc: "Don't run checkM or do any quality filtering. NOT RECOMMENDED! This is useful\
    \ for use with bacteriophages or eukaryotes or things where checkM scoring does\
    \ not work. Will only choose genomes based on length and N50 (default: False)"
  type: boolean
  inputBinding:
    prefix: --ignoreGenomeQuality
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
- id: completeness_weight
  doc: 'completeness weight (default: 1)'
  type: string
  inputBinding:
    prefix: --completeness_weight
- id: contamination_weight
  doc: 'contamination weight (default: 5)'
  type: string
  inputBinding:
    prefix: --contamination_weight
- id: strain_heterogeneity_weight
  doc: 'strain heterogeneity weight (default: 1)'
  type: string
  inputBinding:
    prefix: --strain_heterogeneity_weight
- id: n50_weight
  doc: 'weight of log(genome N50) (default: 0.5)'
  type: string
  inputBinding:
    prefix: --N50_weight
- id: size_weight
  doc: 'weight of log(genome size) (default: 0)'
  type: long
  inputBinding:
    prefix: --size_weight
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
- id: check_m_method
  doc: 'Either lineage_wf (more accurate) or taxonomy_wf (faster) (default: lineage_wf)'
  type: string
  inputBinding:
    prefix: --checkM_method
- id: genome_info
  doc: 'location of .csv file containing quality information on the genomes. Must
    contain: ["genome"(basename of .fasta file of that genome), "completeness"(0-100
    value for completeness of the genome), "contamination"(0-100 value of the contamination
    of the genome)] (default: None)'
  type: string
  inputBinding:
    prefix: --genomeInfo
outputs: []
cwlVersion: v1.1
baseCommand:
- dRep
- dereplicate
