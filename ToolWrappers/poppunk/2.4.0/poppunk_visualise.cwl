class: CommandLineTool
id: poppunk_visualise.cwl
inputs:
- id: in_ref_db
  doc: Location of built reference database
  type: string?
  inputBinding:
    prefix: --ref-db
- id: in_query_db
  doc: Location of query database, if distances are from ref-
  type: string?
  inputBinding:
    prefix: --query-db
- id: in_include_files
  doc: "File with list of sequences to include in\nvisualisation. Default is to use\
    \ all sequences in\ndatabase."
  type: File?
  inputBinding:
    prefix: --include-files
- id: in_external_clustering
  doc: "File with cluster definitions or other labels\ngenerated with any other method."
  type: File?
  inputBinding:
    prefix: --external-clustering
- id: in_model_dir
  doc: "Directory containing model to use for assigning\nqueries to clusters [default\
    \ = reference database\ndirectory]"
  type: Directory?
  inputBinding:
    prefix: --model-dir
- id: in_previous_clustering
  doc: "File containing previous cluster definitions and\nnetwork [default = use that\
    \ in the directory\ncontaining the model]"
  type: File?
  inputBinding:
    prefix: --previous-clustering
- id: in_previous_query_clustering
  doc: "File containing previous cluster definitions from\npoppunk_assign [default\
    \ = use that in the directory of\nthe query database]"
  type: File?
  inputBinding:
    prefix: --previous-query-clustering
- id: in_network_file
  doc: Specify a file to use for any graph visualisations
  type: File?
  inputBinding:
    prefix: --network-file
- id: in_display_cluster
  doc: Column of clustering CSV to use for plotting
  type: string?
  inputBinding:
    prefix: --display-cluster
- id: in_output
  doc: Prefix for output files (required)
  type: string?
  inputBinding:
    prefix: --output
- id: in_overwrite
  doc: Overwrite any existing visualisation files
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_core_only
  doc: "(with a 'refine' model) Use a core-distance only model\nfor assigning queries\
    \ [default = False]"
  type: boolean?
  inputBinding:
    prefix: --core-only
- id: in_accessory_only
  doc: "(with a 'refine' or 'lineage' model) Use an accessory-\ndistance only model\
    \ for assigning queries [default =\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --accessory-only
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
- id: in_tree
  doc: Type of tree to calculate [default = nj]
  type: string?
  inputBinding:
    prefix: --tree
- id: in_mst_distances
  doc: "Distances used to calculate a minimum spanning tree\n[default = core]"
  type: string?
  inputBinding:
    prefix: --mst-distances
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
- id: in_threads
  doc: Number of threads to use [default = 1]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_gpu_dist
  doc: Use a GPU when calculating distances [default = False]
  type: boolean?
  inputBinding:
    prefix: --gpu-dist
- id: in_gpu_graph
  doc: Use a GPU when calculating graphs [default = False]
  type: boolean?
  inputBinding:
    prefix: --gpu-graph
- id: in_deviceid
  doc: CUDA device ID, if using GPU [default = 0]
  type: long?
  inputBinding:
    prefix: --deviceid
- id: in_strand_preserved
  doc: "If distances being calculated, treat strand as known\nwhen calculating random\
    \ match chances [default =\nFalse]"
  type: boolean?
  inputBinding:
    prefix: --strand-preserved
- id: in_query
  doc: --distances DISTANCES
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0
cwlVersion: v1.1
baseCommand:
- poppunk_visualise
