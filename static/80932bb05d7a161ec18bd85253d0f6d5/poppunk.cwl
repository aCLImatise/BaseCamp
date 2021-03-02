class: CommandLineTool
id: poppunk.cwl
inputs:
- id: in_create_db
  doc: Create pairwise distances database between reference
  type: boolean?
  inputBinding:
    prefix: --create-db
- id: in_use_model
  doc: "Apply a fitted model to a reference database to\nrestore database files"
  type: boolean?
  inputBinding:
    prefix: --use-model
- id: in_ref_db
  doc: Location of built reference database
  type: string?
  inputBinding:
    prefix: --ref-db
- id: in_r_files
  doc: File listing reference input assemblies
  type: File?
  inputBinding:
    prefix: --r-files
- id: in_distances
  doc: Prefix of input pickle of pre-calculated distances
  type: string?
  inputBinding:
    prefix: --distances
- id: in_external_clustering
  doc: "File with cluster definitions or other labels\ngenerated with any other method."
  type: File?
  inputBinding:
    prefix: --external-clustering
- id: in_output
  doc: Prefix for output files
  type: string?
  inputBinding:
    prefix: --output
- id: in_plot_fit
  doc: "Create this many plots of some fits relating k-mer to\ncore/accessory distances\
    \ [default = 0]"
  type: long?
  inputBinding:
    prefix: --plot-fit
- id: in_overwrite
  doc: Overwrite any existing database files
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_graph_weights
  doc: Save within-strain Euclidean distances into the graph
  type: boolean?
  inputBinding:
    prefix: --graph-weights
- id: in_min_k
  doc: Minimum kmer length [default = 13]
  type: long?
  inputBinding:
    prefix: --min-k
- id: in_max_k
  doc: Maximum kmer length [default = 29]
  type: long?
  inputBinding:
    prefix: --max-k
- id: in_k_step
  doc: K-mer step size [default = 4]
  type: long?
  inputBinding:
    prefix: --k-step
- id: in_sketch_size
  doc: Kmer sketch size [default = 10000]
  type: long?
  inputBinding:
    prefix: --sketch-size
- id: in_codon_phased
  doc: Used codon phased seeds X--X--X [default = False]
  type: boolean?
  inputBinding:
    prefix: --codon-phased
- id: in_min_km_er_count
  doc: "Minimum k-mer count when using reads as input [default\n= 0]"
  type: long?
  inputBinding:
    prefix: --min-kmer-count
- id: in_exact_count
  doc: "Use the exact k-mer counter with reads [default = use\ncountmin counter]"
  type: boolean?
  inputBinding:
    prefix: --exact-count
- id: in_strand_preserved
  doc: "Treat input as being on the same strand, and ignore\nreverse complement k-mers\
    \ [default = use canonical\nk-mers]"
  type: boolean?
  inputBinding:
    prefix: --strand-preserved
- id: in_qc_filter
  doc: "Behaviour following sequence QC step: \"stop\"\n[default], \"prune\" (analyse\
    \ data passing QC), or\n\"continue\" (analyse all data)"
  type: string?
  inputBinding:
    prefix: --qc-filter
- id: in_retain_failures
  doc: "Retain sketches of genomes that do not pass QC filters\nin separate database\
    \ [default = False]"
  type: boolean?
  inputBinding:
    prefix: --retain-failures
- id: in_max_a_dist
  doc: Maximum accessory distance to permit [default = 0.5]
  type: long?
  inputBinding:
    prefix: --max-a-dist
- id: in_length_sigma
  doc: "Number of standard deviations of length distribution\nbeyond which sequences\
    \ will be excluded [default = 5]"
  type: long?
  inputBinding:
    prefix: --length-sigma
- id: in_length_range
  doc: "LENGTH_RANGE\nAllowed length range, outside of which sequences will\nbe excluded\
    \ [two values needed - lower and upper\nbounds]"
  type: long?
  inputBinding:
    prefix: --length-range
- id: in_prop_n
  doc: "Threshold ambiguous base proportion above which\nsequences will be excluded\
    \ [default = 0.1]"
  type: double?
  inputBinding:
    prefix: --prop-n
- id: in_upper_n
  doc: "Threshold ambiguous base count above which sequences\nwill be excluded"
  type: string?
  inputBinding:
    prefix: --upper-n
- id: in_maximum_number_mixture
  doc: Maximum number of mixture components [default = 2]
  type: long?
  inputBinding:
    prefix: --K
- id: in_maximum_number_default
  doc: "Maximum number of clusters in DBSCAN fitting [default\n= 100]"
  type: long?
  inputBinding:
    prefix: --D
- id: in_min_cluster_prop
  doc: "Minimum proportion of points in a cluster in DBSCAN\nfitting [default = 0.0001]"
  type: long?
  inputBinding:
    prefix: --min-cluster-prop
- id: in_threshold
  doc: Cutoff if using --fit-model threshold
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_pos_shift
  doc: "Maximum amount to move the boundary away from origin\n[default = to between-strain\
    \ mean]"
  type: string?
  inputBinding:
    prefix: --pos-shift
- id: in_neg_shift
  doc: "Maximum amount to move the boundary towards the origin\n[default = to within-strain\
    \ mean]"
  type: string?
  inputBinding:
    prefix: --neg-shift
- id: in_manual_start
  doc: "A file containing information for a start point. See\ndocumentation for help."
  type: File?
  inputBinding:
    prefix: --manual-start
- id: in_indiv_refine
  doc: "Also run refinement for core and accessory\nindividually"
  type: string?
  inputBinding:
    prefix: --indiv-refine
- id: in_no_local
  doc: "Do not perform the local optimization step (speed up\non very large datasets)"
  type: boolean?
  inputBinding:
    prefix: --no-local
- id: in_model_dir
  doc: "Directory containing model to use for assigning\nqueries to clusters [default\
    \ = reference database\ndirectory]"
  type: Directory?
  inputBinding:
    prefix: --model-dir
- id: in_core_only
  doc: Save the core distance fit (with
  type: string?
  inputBinding:
    prefix: --core-only
- id: in_ranks
  doc: "Comma separated list of ranks used in lineage\nclustering [default = 1,2,3]"
  type: long?
  inputBinding:
    prefix: --ranks
- id: in_use_accessory
  doc: "Use accessory distances for lineage definitions\n[default = use core distances]"
  type: boolean?
  inputBinding:
    prefix: --use-accessory
- id: in_threads
  doc: Number of threads to use [default = 1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_gpu_sketch
  doc: "Use a GPU when calculating sketches (read data only)\n[default = False]"
  type: boolean?
  inputBinding:
    prefix: --gpu-sketch
- id: in_gpu_dist
  doc: Use a GPU when calculating distances [default = False]
  type: boolean?
  inputBinding:
    prefix: --gpu-dist
- id: in_deviceid
  doc: CUDA device ID, if using GPU [default = 0]
  type: long?
  inputBinding:
    prefix: --deviceid
- id: in_sequences
  doc: --fit-model {bgmm,dbscan,refine,lineage,threshold}
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/poppunk:2.3.0--py_0
cwlVersion: v1.1
baseCommand:
- poppunk
