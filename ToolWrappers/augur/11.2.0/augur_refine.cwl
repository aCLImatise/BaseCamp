class: CommandLineTool
id: augur_refine.cwl
inputs:
- id: in_alignment
  doc: 'alignment in fasta or VCF format (default: None)'
  type: string?
  inputBinding:
    prefix: --alignment
- id: in_tree
  doc: 'prebuilt Newick (default: None)'
  type: string?
  inputBinding:
    prefix: --tree
- id: in_metadata
  doc: 'sequence metadata, as CSV or TSV (default: None)'
  type: File?
  inputBinding:
    prefix: --metadata
- id: in_output_tree
  doc: 'file name to write tree to (default: None)'
  type: File?
  inputBinding:
    prefix: --output-tree
- id: in_output_node_data
  doc: "file name to write branch lengths as node data\n(default: None)"
  type: File?
  inputBinding:
    prefix: --output-node-data
- id: in_time_tree
  doc: 'produce timetree using treetime (default: False)'
  type: boolean?
  inputBinding:
    prefix: --timetree
- id: in_coalescent
  doc: "coalescent time scale in units of inverse clock rate\n(float), optimize as\
    \ scalar ('opt'), or skyline\n('skyline') (default: None)"
  type: double?
  inputBinding:
    prefix: --coalescent
- id: in_gen_per_year
  doc: "number of generations per year, relevant for skyline\noutput('skyline') (default:\
    \ 50)"
  type: long?
  inputBinding:
    prefix: --gen-per-year
- id: in_clock_rate
  doc: 'fixed clock rate (default: None)'
  type: string?
  inputBinding:
    prefix: --clock-rate
- id: in_clock_std_dev
  doc: "standard deviation of the fixed clock_rate estimate\n(default: None)"
  type: string?
  inputBinding:
    prefix: --clock-std-dev
- id: in_root
  doc: "rooting mechanism ('best', least-squares', 'min_dev',\n'oldest') OR node to\
    \ root by OR two nodes indicating a\nmonophyletic group to root by. Run treetime\
    \ -h for\ndefinitions of rooting methods. (default: best)"
  type: string[]
  inputBinding:
    prefix: --root
- id: in_keep_root
  doc: "do not reroot the tree; use it as-is. Overrides\nanything specified by --root.\
    \ (default: False)"
  type: boolean?
  inputBinding:
    prefix: --keep-root
- id: in_covariance
  doc: "Account for covariation when estimating rates and/or\nrerooting. Use --no-covariance\
    \ to turn off. (default:\nTrue)"
  type: boolean?
  inputBinding:
    prefix: --covariance
- id: in_keep_poly_to_mies
  doc: 'Do not attempt to resolve polytomies (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keep-polytomies
- id: in_precision
  doc: "precision used by TreeTime to determine the number of\ngrid points that are\
    \ used for the evaluation of the\nbranch length interpolation objects. Values\
    \ range from\n0 (rough) to 3 (ultra fine) and default to 'auto'.\n(default: None)"
  type: string?
  inputBinding:
    prefix: --precision
- id: in_date_format
  doc: 'date format (default: %Y-%m-%d)'
  type: string?
  inputBinding:
    prefix: --date-format
- id: in_date_confidence
  doc: "calculate confidence intervals for node dates\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --date-confidence
- id: in_date_inference
  doc: "assign internal nodes to their marginally most likely\ndates, not jointly\
    \ most likely (default: joint)"
  type: string?
  inputBinding:
    prefix: --date-inference
- id: in_branch_length_inference
  doc: 'branch length mode of treetime to use (default: auto)'
  type: string?
  inputBinding:
    prefix: --branch-length-inference
- id: in_clock_filter_iqd
  doc: "clock-filter: remove tips that deviate more than n_iqd\ninterquartile ranges\
    \ from the root-to-tip vs time\nregression (default: None)"
  type: string?
  inputBinding:
    prefix: --clock-filter-iqd
- id: in_vcf_reference
  doc: "fasta file of the sequence the VCF was mapped to\n(default: None)"
  type: File?
  inputBinding:
    prefix: --vcf-reference
- id: in_year_bounds
  doc: "specify min or max & min prediction bounds for samples\nwith XX in year (default:\
    \ None)"
  type: string[]
  inputBinding:
    prefix: --year-bounds
- id: in_divergence_units
  doc: "Units in which sequence divergences is exported.\n(default: mutations-per-site)"
  type: string?
  inputBinding:
    prefix: --divergence-units
- id: in_seed
  doc: 'seed for random number generation (default: None)'
  type: long?
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augur:11.2.0--py_0
cwlVersion: v1.1
baseCommand:
- augur
- refine
