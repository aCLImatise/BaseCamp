class: CommandLineTool
id: poppunk_assign.cwl
inputs:
- id: in_db
  doc: Location of built reference database
  type: string?
  inputBinding:
    prefix: --db
- id: in_query
  doc: File listing query input assemblies
  type: File?
  inputBinding:
    prefix: --query
- id: in_distances
  doc: "Prefix of input pickle of pre-calculated distances (if\nnot in --db)"
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
- id: in_write_references
  doc: "Write reference database isolates' cluster assignments\nout too"
  type: boolean?
  inputBinding:
    prefix: --write-references
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
- id: in_graph_weights
  doc: Save within-strain Euclidean distances into the graph
  type: boolean?
  inputBinding:
    prefix: --graph-weights
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
- id: in_max_pi_dist
  doc: Maximum core distance to permit [default = 0.5]
  type: long?
  inputBinding:
    prefix: --max-pi-dist
- id: in_type_isolate
  doc: "Isolate from which distances can be calculated for\npruning [default = None]"
  type: string?
  inputBinding:
    prefix: --type-isolate
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
- id: in_gpu_graph
  doc: Use a GPU when constructing networks [default = False]
  type: boolean?
  inputBinding:
    prefix: --gpu-graph
- id: in_deviceid
  doc: CUDA device ID, if using GPU [default = 0]
  type: long?
  inputBinding:
    prefix: --deviceid
- id: in_citation
  doc: "Give a citation, and possible methods paragraph based\non the command line\n"
  type: boolean?
  inputBinding:
    prefix: --citation
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/poppunk:2.4.0--py39h7f0572b_0
cwlVersion: v1.1
baseCommand:
- poppunk_assign
