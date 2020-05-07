class: CommandLineTool
id: poppunk.cwl
inputs:
- id: easy_run
  doc: Create clusters from assemblies with default settings
  type: boolean
  inputBinding:
    prefix: --easy-run
- id: create_db
  doc: Create pairwise distances database between reference sequences
  type: boolean
  inputBinding:
    prefix: --create-db
- id: fit_model
  doc: Fit a mixture model to a reference database
  type: boolean
  inputBinding:
    prefix: --fit-model
- id: refine_model
  doc: Refine the accuracy of a fitted model
  type: boolean
  inputBinding:
    prefix: --refine-model
- id: assign_query
  doc: Assign the cluster of query sequences without re- running the whole mixture
    model
  type: boolean
  inputBinding:
    prefix: --assign-query
- id: generate_viz
  doc: Generate files for a visualisation from an existing database
  type: boolean
  inputBinding:
    prefix: --generate-viz
- id: threshold
  doc: Create model at this core distance threshold
  type: string
  inputBinding:
    prefix: --threshold
- id: use_model
  doc: Apply a fitted model to a reference database to restore database files
  type: boolean
  inputBinding:
    prefix: --use-model
- id: ref_db
  doc: Location of built reference database
  type: string
  inputBinding:
    prefix: --ref-db
- id: r_files
  doc: File listing reference input assemblies
  type: string
  inputBinding:
    prefix: --r-files
- id: q_files
  doc: File listing query input assemblies
  type: string
  inputBinding:
    prefix: --q-files
- id: distances
  doc: Prefix of input pickle of pre-calculated distances
  type: string
  inputBinding:
    prefix: --distances
- id: external_clustering
  doc: File with cluster definitions or other labels generated with any other method.
  type: string
  inputBinding:
    prefix: --external-clustering
- id: output
  doc: Prefix for output files (required)
  type: string
  inputBinding:
    prefix: --output
- id: plot_fit
  doc: Create this many plots of some fits relating k-mer to core/accessory distances
    [default = 0]
  type: string
  inputBinding:
    prefix: --plot-fit
- id: full_db
  doc: Keep full reference database, not just representatives
  type: boolean
  inputBinding:
    prefix: --full-db
- id: update_db
  doc: Update reference database with query sequences
  type: boolean
  inputBinding:
    prefix: --update-db
- id: overwrite
  doc: Overwrite any existing database files
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: min_k
  doc: Minimum kmer length [default = 9]
  type: long
  inputBinding:
    prefix: --min-k
- id: max_k
  doc: Maximum kmer length [default = 29]
  type: long
  inputBinding:
    prefix: --max-k
- id: k_step
  doc: K-mer step size [default = 4]
  type: string
  inputBinding:
    prefix: --k-step
- id: sketch_size
  doc: Kmer sketch size [default = 10000]
  type: string
  inputBinding:
    prefix: --sketch-size
- id: min_km_er_count
  doc: Minimum k-mer count when using reads as input [default = 0]
  type: long
  inputBinding:
    prefix: --min-kmer-count
- id: exact_count
  doc: Use the exact k-mer counter with reads [default = use countmin counter]
  type: boolean
  inputBinding:
    prefix: --exact-count
- id: strand_preserved
  doc: Treat input as being on the same strand, and ignore reverse complement k-mers
    [default = use canonical k-mers]
  type: boolean
  inputBinding:
    prefix: --strand-preserved
- id: max_a_dist
  doc: Maximum accessory distance to permit [default = 0.5]
  type: long
  inputBinding:
    prefix: --max-a-dist
- id: ignore_length
  doc: Ignore outliers in terms of assembly length [default = False]
  type: boolean
  inputBinding:
    prefix: --ignore-length
- id: estimated_length
  doc: Provide an integer estimated genome length when using "--ignore-length" [default
    = 2000000]
  type: string
  inputBinding:
    prefix: --estimated-length
- id: k
  doc: Maximum number of mixture components [default = 2]
  type: string
  inputBinding:
    prefix: --K
- id: dbs_can
  doc: Use DBSCAN rather than mixture model
  type: boolean
  inputBinding:
    prefix: --dbscan
- id: d
  doc: Maximum number of clusters in DBSCAN fitting [default = 100]
  type: string
  inputBinding:
    prefix: --D
- id: min_cluster_prop
  doc: Minimum proportion of points in a cluster in DBSCAN fitting [default = 0.0001]
  type: long
  inputBinding:
    prefix: --min-cluster-prop
- id: pos_shift
  doc: Maximum amount to move the boundary away from origin [default = 0.2]
  type: string
  inputBinding:
    prefix: --pos-shift
- id: neg_shift
  doc: Maximum amount to move the boundary towards the origin [default = 0.4]
  type: string
  inputBinding:
    prefix: --neg-shift
- id: manual_start
  doc: A file containing information for a start point. See documentation for help.
  type: string
  inputBinding:
    prefix: --manual-start
- id: indiv_refine
  doc: Also run refinement for core and accessory individually
  type: boolean
  inputBinding:
    prefix: --indiv-refine
- id: no_local
  doc: Do not perform the local optimization step (speed up on very large datasets)
  type: boolean
  inputBinding:
    prefix: --no-local
- id: model_dir
  doc: Directory containing model to use for assigning queries to clusters [default
    = reference database directory]
  type: string
  inputBinding:
    prefix: --model-dir
- id: previous_clustering
  doc: Directory containing previous cluster definitions and network [default = use
    that in the directory containing the model]
  type: string
  inputBinding:
    prefix: --previous-clustering
- id: core_only
  doc: Use a core-distance only model for assigning queries [default = False]
  type: boolean
  inputBinding:
    prefix: --core-only
- id: accessory_only
  doc: Use an accessory-distance only model for assigning queries [default = False]
  type: boolean
  inputBinding:
    prefix: --accessory-only
- id: subset
  doc: File with list of sequences to include in visualisation (with --generate-viz
    only)
  type: string
  inputBinding:
    prefix: --subset
- id: micro_react
  doc: Generate output files for microreact visualisation
  type: boolean
  inputBinding:
    prefix: --microreact
- id: cytoscape
  doc: Generate network output files for Cytoscape
  type: boolean
  inputBinding:
    prefix: --cytoscape
- id: p_handango
  doc: Generate phylogeny and TSV for Phandango visualisation
  type: boolean
  inputBinding:
    prefix: --phandango
- id: grape_tree
  doc: Generate phylogeny and CSV for grapetree visualisation
  type: boolean
  inputBinding:
    prefix: --grapetree
- id: rapid_nj
  doc: Path to rapidNJ binary to build NJ tree for Microreact
  type: string
  inputBinding:
    prefix: --rapidnj
- id: perplexity
  doc: Perplexity used to calculate t-SNE projection (with --microreact) [default=20.0]
  type: string
  inputBinding:
    prefix: --perplexity
- id: info_csv
  doc: Epidemiological information CSV formatted for microreact (can be used with
    other outputs)
  type: string
  inputBinding:
    prefix: --info-csv
- id: use_mash
  doc: Use the old mash sketch backend [default = False]
  type: boolean
  inputBinding:
    prefix: --use-mash
- id: mash
  doc: Location of mash executable
  type: string
  inputBinding:
    prefix: --mash
- id: threads
  doc: Number of threads to use [default = 1]
  type: string
  inputBinding:
    prefix: --threads
- id: use_gpu
  doc: Use a GPU when calculating distances [default = False]
  type: boolean
  inputBinding:
    prefix: --use-gpu
- id: deviceid
  doc: CUDA device ID, if using GPU [default = 0]
  type: string
  inputBinding:
    prefix: --deviceid
- id: no_stream
  doc: Use temporary files for mash dist interfacing. Reduce memory use/increase disk
    use for large datasets
  type: boolean
  inputBinding:
    prefix: --no-stream
outputs: []
cwlVersion: v1.1
baseCommand:
- poppunk
