class: CommandLineTool
id: poppunk.cwl
inputs:
- id: in_easy_run
  doc: Create clusters from assemblies with default settings
  type: boolean?
  inputBinding:
    prefix: --easy-run
- id: in_create_db
  doc: Create pairwise distances database between reference
  type: boolean?
  inputBinding:
    prefix: --create-db
- id: in_refine_model
  doc: Refine the accuracy of a fitted model
  type: boolean?
  inputBinding:
    prefix: --refine-model
- id: in_assign_query
  doc: "Assign the cluster of query sequences without re-\nrunning the whole mixture\
    \ model"
  type: boolean?
  inputBinding:
    prefix: --assign-query
- id: in_generate_viz
  doc: Generate files for a visualisation from an existing
  type: boolean?
  inputBinding:
    prefix: --generate-viz
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
- id: in_q_files
  doc: File listing query input assemblies
  type: File?
  inputBinding:
    prefix: --q-files
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
  doc: Prefix for output files (required)
  type: string?
  inputBinding:
    prefix: --output
- id: in_plot_fit
  doc: "Create this many plots of some fits relating k-mer to\ncore/accessory distances\
    \ [default = 0]"
  type: long?
  inputBinding:
    prefix: --plot-fit
- id: in_full_db
  doc: Keep full reference database, not just representatives
  type: boolean?
  inputBinding:
    prefix: --full-db
- id: in_update_db
  doc: Update reference database with query sequences
  type: boolean?
  inputBinding:
    prefix: --update-db
- id: in_overwrite
  doc: Overwrite any existing database files
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_min_k
  doc: Minimum kmer length [default = 9]
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
- id: in_max_a_dist
  doc: Maximum accessory distance to permit [default = 0.5]
  type: long?
  inputBinding:
    prefix: --max-a-dist
- id: in_ignore_length
  doc: "Ignore outliers in terms of assembly length [default =\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --ignore-length
- id: in_estimated_length
  doc: "Provide an integer estimated genome length when using\n\"--ignore-length\"\
    \ [default = 2000000]"
  type: long?
  inputBinding:
    prefix: --estimated-length
- id: in_maximum_number_mixture
  doc: Maximum number of mixture components [default = 2]
  type: long?
  inputBinding:
    prefix: --K
- id: in_dbs_can
  doc: Use DBSCAN rather than mixture model
  type: boolean?
  inputBinding:
    prefix: --dbscan
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
- id: in_pos_shift
  doc: "Maximum amount to move the boundary away from origin\n[default = 0.2]"
  type: double?
  inputBinding:
    prefix: --pos-shift
- id: in_neg_shift
  doc: "Maximum amount to move the boundary towards the origin\n[default = 0.4]"
  type: double?
  inputBinding:
    prefix: --neg-shift
- id: in_manual_start
  doc: "A file containing information for a start point. See\ndocumentation for help."
  type: File?
  inputBinding:
    prefix: --manual-start
- id: in_indiv_refine
  doc: Also run refinement for core and accessory
  type: boolean?
  inputBinding:
    prefix: --indiv-refine
- id: in_model_dir
  doc: "Directory containing model to use for assigning\nqueries to clusters [default\
    \ = reference database\ndirectory]"
  type: Directory?
  inputBinding:
    prefix: --model-dir
- id: in_previous_clustering
  doc: "Directory containing previous cluster definitions and\nnetwork [default =\
    \ use that in the directory\ncontaining the model]"
  type: Directory?
  inputBinding:
    prefix: --previous-clustering
- id: in_core_only
  doc: "Use a core-distance only model for assigning queries\n[default = False]"
  type: boolean?
  inputBinding:
    prefix: --core-only
- id: in_accessory_only
  doc: "Use an accessory-distance only model for assigning\nqueries [default = False]"
  type: boolean?
  inputBinding:
    prefix: --accessory-only
- id: in_subset
  doc: "File with list of sequences to include in\nvisualisation (with --generate-viz\
    \ only)"
  type: File?
  inputBinding:
    prefix: --subset
- id: in_micro_react
  doc: Generate output files for microreact visualisation
  type: boolean?
  inputBinding:
    prefix: --microreact
- id: in_cytoscape
  doc: Generate network output files for Cytoscape
  type: boolean?
  inputBinding:
    prefix: --cytoscape
- id: in_p_handango
  doc: Generate phylogeny and TSV for Phandango visualisation
  type: boolean?
  inputBinding:
    prefix: --phandango
- id: in_grape_tree
  doc: Generate phylogeny and CSV for grapetree visualisation
  type: boolean?
  inputBinding:
    prefix: --grapetree
- id: in_rapid_nj
  doc: Path to rapidNJ binary to build NJ tree for Microreact
  type: File?
  inputBinding:
    prefix: --rapidnj
- id: in_perplexity
  doc: "Perplexity used to calculate t-SNE projection (with\n--microreact) [default=20.0]"
  type: double?
  inputBinding:
    prefix: --perplexity
- id: in_info_csv
  doc: "Epidemiological information CSV formatted for\nmicroreact (can be used with\
    \ other outputs)"
  type: string?
  inputBinding:
    prefix: --info-csv
- id: in_use_mash
  doc: Use the old mash sketch backend [default = False]
  type: boolean?
  inputBinding:
    prefix: --use-mash
- id: in_mash
  doc: Location of mash executable
  type: string?
  inputBinding:
    prefix: --mash
- id: in_threads
  doc: Number of threads to use [default = 1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_use_gpu
  doc: Use a GPU when calculating distances [default = False]
  type: boolean?
  inputBinding:
    prefix: --use-gpu
- id: in_deviceid
  doc: CUDA device ID, if using GPU [default = 0]
  type: long?
  inputBinding:
    prefix: --deviceid
- id: in_no_stream
  doc: "Use temporary files for mash dist interfacing. Reduce\nmemory use/increase\
    \ disk use for large datasets"
  type: boolean?
  inputBinding:
    prefix: --no-stream
- id: in_sequences
  doc: --fit-model           Fit a mixture model to a reference database
  type: string
  inputBinding:
    position: 0
- id: in_database
  doc: --threshold THRESHOLD
  type: string
  inputBinding:
    position: 1
- id: in_individually
  doc: --no-local            Do not perform the local optimization step (speed up
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- poppunk
