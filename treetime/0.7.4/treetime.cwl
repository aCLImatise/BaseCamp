class: CommandLineTool
id: ../../../treetime.cwl
inputs:
- id: tree
  doc: Name of file containing the tree in newick, nexus, or phylip format. If none
    is provided, treetime will attempt to build a tree from the alignment using fasttree,
    iqtree, or raxml (assuming they are installed)
  type: string
  inputBinding:
    prefix: --tree
- id: sequence_length
  doc: length of the sequence, used to calculate expected variation in branch length.
    Not required if alignment is provided.
  type: string
  inputBinding:
    prefix: --sequence-length
- id: aln
  doc: alignment file (fasta)
  type: string
  inputBinding:
    prefix: --aln
- id: vcf_reference
  doc: 'only for vcf input: fasta file of the sequence the VCF was mapped to.'
  type: string
  inputBinding:
    prefix: --vcf-reference
- id: dates
  doc: csv file with dates for nodes with 'node_name, date' where date is float (as
    in 2012.15)
  type: string
  inputBinding:
    prefix: --dates
- id: name_column
  doc: label of the column to be used as taxon name
  type: string
  inputBinding:
    prefix: --name-column
- id: date_column
  doc: label of the column to be used as sampling date
  type: string
  inputBinding:
    prefix: --date-column
- id: clock_filter
  doc: ignore tips that don't follow a loose clock, 'clock- filter=number of interquartile
    ranges from regression'. Default=3.0, set to 0 to switch off.
  type: string
  inputBinding:
    prefix: --clock-filter
- id: re_root
  doc: Reroot the tree using root-to-tip regression. Valid choices are 'min_dev',
    'least-squares', and 'oldest'. 'least-squares' adjusts the root to minimize residuals
    of the root-to-tip vs sampling time regression, 'min_dev' minimizes variance of
    root-to-tip distances. 'least-squares' can be combined with --covariation to account
    for shared ancestry. Alternatively, you can specify a node name or a list of node
    names to be used as outgroup or use 'oldest' to reroot to the oldest node. By
    default, TreeTime will reroot using 'least- squares'. Use --keep-root to keep
    the current root.
  type: string[]
  inputBinding:
    prefix: --reroot
- id: keep_root
  doc: don't reroot the tree. Otherwise, reroot to minimize the the residual of the
    regression of root-to-tip distance and sampling time
  type: boolean
  inputBinding:
    prefix: --keep-root
- id: tip_slack
  doc: excess variance associated with terminal nodes accounting for overdisperion
    of the molecular clock
  type: string
  inputBinding:
    prefix: --tip-slack
- id: covariation
  doc: Account for covariation when estimating rates or rerooting using root-to-tip
    regression, default False.
  type: boolean
  inputBinding:
    prefix: --covariation
- id: gtr
  doc: GTR model to use. '--gtr infer' will infer a model from the data. Alternatively,
    specify the model type. If the specified model requires additional options, use
    '--gtr-params' to specify those.
  type: string
  inputBinding:
    prefix: --gtr
- id: gtr_params
  doc: "GTR parameters for the model specified by the --gtr argument. The parameters\
    \ should be feed as 'key=value' list of parameters. Example: '--gtr K80 --gtr-params\
    \ kappa=0.2 pis=0.25,0.25,0.25,0.25'. See the exact definitions of the parameters\
    \ in the GTR creation methods in treetime/nuc_models.py or treetime/aa_models.py"
  type: string[]
  inputBinding:
    prefix: --gtr-params
- id: aa
  doc: use aminoacid alphabet
  type: boolean
  inputBinding:
    prefix: --aa
- id: clock_rate
  doc: if specified, the rate of the molecular clock won't be optimized.
  type: string
  inputBinding:
    prefix: --clock-rate
- id: clock_std_dev
  doc: standard deviation of the provided clock rate estimate
  type: string
  inputBinding:
    prefix: --clock-std-dev
- id: branch_length_mode
  doc: If set to 'input', the provided branch length will be used without modification.
    Note that branch lengths optimized by treetime are only accurate at short evolutionary
    distances.
  type: string
  inputBinding:
    prefix: --branch-length-mode
- id: confidence
  doc: estimate confidence intervals of divergence times.
  type: boolean
  inputBinding:
    prefix: --confidence
- id: keep_poly_to_mies
  doc: Don't resolve polytomies using temporal information.
  type: boolean
  inputBinding:
    prefix: --keep-polytomies
- id: relax
  doc: RELAX   use an autocorrelated molecular clock. Strength of the gaussian priors
    on branch specific rate deviation and the coupling of parent and offspring rates
    can be specified e.g. as --relax 1.0 0.5. Values around 1.0 correspond to weak
    priors, larger values constrain rate deviations more strongly. Coupling 0 (--relax
    1.0 0) corresponds to an un-correlated clock.
  type: string
  inputBinding:
    prefix: --relax
- id: max_iter
  doc: maximal number of iterations the inference cycle is run. Note that for polytomy
    resolution and coalescence models max_iter should be at least 2
  type: long
  inputBinding:
    prefix: --max-iter
- id: coalescent
  doc: coalescent time scale -- sensible values are on the order of the average hamming
    distance of contemporaneous sequences. In addition, 'opt' 'skyline' are valid
    options and estimate a constant coalescent rate or a piecewise linear coalescent
    rate history
  type: string
  inputBinding:
    prefix: --coalescent
- id: n_skyline
  doc: number of grid points in skyline coalescent model
  type: string
  inputBinding:
    prefix: --n-skyline
- id: plot_tree
  doc: filename to save the plot to. Suffix will determine format (choices pdf, png,
    svg, default=pdf)
  type: string
  inputBinding:
    prefix: --plot-tree
- id: plot_rtt
  doc: filename to save the plot to. Suffix will determine format (choices pdf, png,
    svg, default=pdf)
  type: string
  inputBinding:
    prefix: --plot-rtt
- id: tip_labels
  doc: add tip labels (default for small trees with <30 leaves)
  type: boolean
  inputBinding:
    prefix: --tip-labels
- id: no_tip_labels
  doc: don't show tip labels (default for small trees with >=30 leaves)
  type: boolean
  inputBinding:
    prefix: --no-tip-labels
- id: keep_overhangs
  doc: do not fill terminal gaps
  type: boolean
  inputBinding:
    prefix: --keep-overhangs
- id: zero_based
  doc: zero based mutation indexing
  type: boolean
  inputBinding:
    prefix: --zero-based
- id: reconstruct_tip_states
  doc: overwrite ambiguous states on tips with the most likely inferred state
  type: boolean
  inputBinding:
    prefix: --reconstruct-tip-states
- id: report_ambiguous
  doc: include transitions involving ambiguous states
  type: boolean
  inputBinding:
    prefix: --report-ambiguous
- id: verbose
  doc: verbosity of output 0-6
  type: string
  inputBinding:
    prefix: --verbose
- id: outdir
  doc: directory to write the output to
  type: string
  inputBinding:
    prefix: --outdir
outputs: []
cwlVersion: v1.1
baseCommand:
- treetime
