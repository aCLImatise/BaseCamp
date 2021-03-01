class: CommandLineTool
id: treerecs.cwl
inputs:
- id: in_verbose
  doc: verbose mode. Causes Treerecs to print messages about its progress.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_super_verbose
  doc: super-verbose mode. Print even more messages than in verbose mode.
  type: boolean?
  inputBinding:
    prefix: --superverbose
- id: in_gene_tree
  doc: 'input gene tree(s) (supported formats: Newick, NHX or PhyloXML).'
  type: File?
  inputBinding:
    prefix: --genetree
- id: in_species_tree
  doc: 'input species tree (supported formats: Newick, NHX or PhyloXML).'
  type: File?
  inputBinding:
    prefix: --speciestree
- id: in_alignments
  doc: "input alignment file. Must contain:\n* the pll substitution model to use\n\
    * the paths to the multiple alignments (one per gene-tree)"
  type: File?
  inputBinding:
    prefix: --alignments
- id: in_s_map
  doc: input gene-to-species mapping file.
  type: File?
  inputBinding:
    prefix: --smap
- id: in_re_root
  doc: find the best root according to the reconciliation cost.
  type: boolean?
  inputBinding:
    prefix: --reroot
- id: in_dup_cost
  doc: specify gene duplication cost (default value = 2).
  type: long?
  inputBinding:
    prefix: --dupcost
- id: in_loss_cost
  doc: specify gene loss cost (default value = 1).
  type: long?
  inputBinding:
    prefix: --losscost
- id: in_threshold
  doc: "| quantiles[N]\nspecify branch support thresholds to use while contracting\
    \ gene trees.\n* EXPRESSION can be any colon-separated combination of the following:\n\
    none: no contraction\nall: contract all branches. The tree collapses into a single\
    \ polytomy\nVALUE: contract branches with support strictly lower than VALUE\n\
    VALUE+epsilon (short VALUE+e): contract branches with support equal to\nor lower\
    \ than VALUE\n* quantiles[N]: use several threshold values: none, all, and the\n\
    quantiles dividing the branch supports into N groups"
  type: string?
  inputBinding:
    prefix: --threshold
- id: in_sample_size
  doc: size of the tree sampling (default value = 1).
  type: long?
  inputBinding:
    prefix: --sample-size
- id: in_tree_index
  doc: only consider the VALUE-th gene tree in the gene tree file.
  type: File?
  inputBinding:
    prefix: --tree-index
- id: in_outdir
  doc: 'output directory (default: treerecs_output).'
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_output_format
  doc: "output format(s): newick(default), nhx, phyloxml, recphyloxml or svg.\nrepeat\
    \ option or use a colon-separated list of formats to get multiple\noutput"
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_force
  doc: force possible overwrite of existing files.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_sep
  doc: "specify separator character for species names embedded in gene names\n(default\
    \ = '_')."
  type: string?
  inputBinding:
    prefix: --sep
- id: in_prefix
  doc: "/N\nspecify whether the species_name is a prefix of gene_name\ndefault = N)."
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_parallelize
  doc: run in parallel if possible.
  type: boolean?
  inputBinding:
    prefix: --parallelize
- id: in_save_map
  doc: save map(s) used during execution.
  type: boolean?
  inputBinding:
    prefix: --save-map
- id: in_quiet
  doc: silent mode (no print, no progression bar).
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_costs_estimation
  doc: estimate duplication and loss costs.
  type: boolean?
  inputBinding:
    prefix: --costs-estimation
- id: in_info
  doc: print informations about genetree(s) with a branch support diagram.
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_case_sensitive
  doc: use case sensitive mapping.
  type: boolean?
  inputBinding:
    prefix: --case-sensitive
- id: in_ale_evaluation
  doc: compute ALE log likelihood for each solution.
  type: boolean?
  inputBinding:
    prefix: --ale-evaluation
- id: in_output_without_description
  doc: strip output from gene tree descriptions.
  type: boolean?
  inputBinding:
    prefix: --output-without-description
- id: in_f_event
  doc: create a file that summarizes orthology/paralogy relationships.
  type: boolean?
  inputBinding:
    prefix: --fevent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'output directory (default: treerecs_output).'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- treerecs
