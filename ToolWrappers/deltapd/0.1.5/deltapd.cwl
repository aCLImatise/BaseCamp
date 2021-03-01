class: CommandLineTool
id: deltapd.cwl
inputs:
- id: in_r_tree
  doc: path to the reference tree
  type: File?
  inputBinding:
    prefix: --r_tree
- id: in_q_tree
  doc: path to the query tree
  type: File?
  inputBinding:
    prefix: --q_tree
- id: in_metadata
  doc: path to the metadata file
  type: File?
  inputBinding:
    prefix: --metadata
- id: in_msa_file
  doc: path to the msa file used to infer the query tree
  type: File?
  inputBinding:
    prefix: --msa_file
- id: in_out_dir
  doc: path to output directory
  type: File?
  inputBinding:
    prefix: --out_dir
- id: in_max_tax_a
  doc: "if a ref taxon represents more than this number of qry\ntaxa, ignore it"
  type: long?
  inputBinding:
    prefix: --max_taxa
- id: in_qry_sep
  doc: query taxon separator in query tree, e.g.
  type: string?
  inputBinding:
    prefix: --qry_sep
- id: in_influence_thresh
  doc: outlier influence threshold value [0,inf)
  type: long?
  inputBinding:
    prefix: --influence_thresh
- id: in_diff_thresh
  doc: "minimum change to base model to be considered an\noutlier"
  type: string?
  inputBinding:
    prefix: --diff_thresh
- id: in_consider_query_taxa
  doc: "consider the query taxa represented by the ``k``\nnearest neighbours for each\
    \ representative taxon"
  type: string?
  inputBinding:
    prefix: --k
- id: in_plot
  doc: generate outlier plots (slow)
  type: boolean?
  inputBinding:
    prefix: --plot
- id: in_ete_three_scale
  doc: pixels per branch length unit
  type: long?
  inputBinding:
    prefix: --ete3_scale
- id: in_cpus
  doc: number of CPUs to use
  type: long?
  inputBinding:
    prefix: --cpus
- id: in_debug
  doc: output debugging information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_tax_on_geneid
  doc: 'Outlier arguments (optional):'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: path to output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/deltapd:0.1.5--py38h810810d_0
cwlVersion: v1.1
baseCommand:
- deltapd
