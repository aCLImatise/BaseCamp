class: CommandLineTool
id: treetime.cwl
inputs:
- id: in_tree
  doc: "Name of file containing the tree in newick, nexus, or\nphylip format. If none\
    \ is provided, treetime will\nattempt to build a tree from the alignment using\n\
    fasttree, iqtree, or raxml (assuming they are\ninstalled)"
  type: File?
  inputBinding:
    prefix: --tree
- id: in_sequence_length
  doc: "length of the sequence, used to calculate expected\nvariation in branch length.\
    \ Not required if alignment\nis provided."
  type: long?
  inputBinding:
    prefix: --sequence-length
- id: in_aln
  doc: alignment file (fasta)
  type: File?
  inputBinding:
    prefix: --aln
- id: in_vcf_reference
  doc: "only for vcf input: fasta file of the sequence the VCF\nwas mapped to."
  type: File?
  inputBinding:
    prefix: --vcf-reference
- id: in_dates
  doc: "csv file with dates for nodes with 'node_name, date'\nwhere date is float\
    \ (as in 2012.15)"
  type: double?
  inputBinding:
    prefix: --dates
- id: in_name_column
  doc: label of the column to be used as taxon name
  type: string?
  inputBinding:
    prefix: --name-column
- id: in_date_column
  doc: label of the column to be used as sampling date
  type: string?
  inputBinding:
    prefix: --date-column
- id: in_clock_filter
  doc: "ignore tips that don't follow a loose clock, 'clock-\nfilter=number of interquartile\
    \ ranges from\nregression'. Default=3.0, set to 0 to switch off."
  type: long?
  inputBinding:
    prefix: --clock-filter
- id: in_re_root
  doc: "Reroot the tree using root-to-tip regression. Valid\nchoices are 'min_dev',\
    \ 'least-squares', and 'oldest'.\n'least-squares' adjusts the root to minimize\
    \ residuals\nof the root-to-tip vs sampling time regression,\n'min_dev' minimizes\
    \ variance of root-to-tip distances.\n'least-squares' can be combined with --covariation\
    \ to\naccount for shared ancestry. Alternatively, you can\nspecify a node name\
    \ or a list of node names to be used\nas outgroup or use 'oldest' to reroot to\
    \ the oldest\nnode. By default, TreeTime will reroot using 'least-\nsquares'.\
    \ Use --keep-root to keep the current root."
  type: string[]
  inputBinding:
    prefix: --reroot
- id: in_keep_root
  doc: "don't reroot the tree. Otherwise, reroot to minimize\nthe the residual of\
    \ the regression of root-to-tip\ndistance and sampling time"
  type: boolean?
  inputBinding:
    prefix: --keep-root
- id: in_tip_slack
  doc: "excess variance associated with terminal nodes\naccounting for overdisperion\
    \ of the molecular clock"
  type: string?
  inputBinding:
    prefix: --tip-slack
- id: in_covariation
  doc: "Account for covariation when estimating rates or\nrerooting using root-to-tip\
    \ regression, default False."
  type: boolean?
  inputBinding:
    prefix: --covariation
- id: in_gtr
  doc: "GTR model to use. '--gtr infer' will infer a model\nfrom the data. Alternatively,\
    \ specify the model type.\nIf the specified model requires additional options,\n\
    use '--gtr-params' to specify those."
  type: string?
  inputBinding:
    prefix: --gtr
- id: in_gtr_params
  doc: "GTR parameters for the model specified by the --gtr\nargument. The parameters\
    \ should be feed as 'key=value'\nlist of parameters. Example: '--gtr K80 --gtr-params\n\
    kappa=0.2 pis=0.25,0.25,0.25,0.25'. See the exact\ndefinitions of the parameters\
    \ in the GTR creation\nmethods in treetime/nuc_models.py or\ntreetime/aa_models.py"
  type: string[]
  inputBinding:
    prefix: --gtr-params
- id: in_aa
  doc: use aminoacid alphabet
  type: boolean?
  inputBinding:
    prefix: --aa
- id: in_clock_rate
  doc: "if specified, the rate of the molecular clock won't be\noptimized."
  type: string?
  inputBinding:
    prefix: --clock-rate
- id: in_clock_std_dev
  doc: standard deviation of the provided clock rate estimate
  type: string?
  inputBinding:
    prefix: --clock-std-dev
- id: in_branch_length_mode
  doc: "If set to 'input', the provided branch length will be\nused without modification.\
    \ Note that branch lengths\noptimized by treetime are only accurate at short\n\
    evolutionary distances."
  type: string?
  inputBinding:
    prefix: --branch-length-mode
- id: in_confidence
  doc: estimate confidence intervals of divergence times.
  type: boolean?
  inputBinding:
    prefix: --confidence
- id: in_keep_poly_to_mies
  doc: Don't resolve polytomies using temporal information.
  type: boolean?
  inputBinding:
    prefix: --keep-polytomies
- id: in_relax
  doc: "RELAX   use an autocorrelated molecular clock. Strength of the\ngaussian priors\
    \ on branch specific rate deviation and\nthe coupling of parent and offspring\
    \ rates can be\nspecified e.g. as --relax 1.0 0.5. Values around 1.0\ncorrespond\
    \ to weak priors, larger values constrain\nrate deviations more strongly. Coupling\
    \ 0 (--relax 1.0\n0) corresponds to an un-correlated clock."
  type: double?
  inputBinding:
    prefix: --relax
- id: in_max_iter
  doc: "maximal number of iterations the inference cycle is\nrun. Note that for polytomy\
    \ resolution and coalescence\nmodels max_iter should be at least 2"
  type: long?
  inputBinding:
    prefix: --max-iter
- id: in_coalescent
  doc: "coalescent time scale -- sensible values are on the\norder of the average\
    \ hamming distance of\ncontemporaneous sequences. In addition, 'opt'\n'skyline'\
    \ are valid options and estimate a constant\ncoalescent rate or a piecewise linear\
    \ coalescent rate\nhistory"
  type: string?
  inputBinding:
    prefix: --coalescent
- id: in_n_skyline
  doc: number of grid points in skyline coalescent model
  type: long?
  inputBinding:
    prefix: --n-skyline
- id: in_plot_tree
  doc: "filename to save the plot to. Suffix will determine\nformat (choices pdf,\
    \ png, svg, default=pdf)"
  type: File?
  inputBinding:
    prefix: --plot-tree
- id: in_plot_rtt
  doc: "filename to save the plot to. Suffix will determine\nformat (choices pdf,\
    \ png, svg, default=pdf)"
  type: File?
  inputBinding:
    prefix: --plot-rtt
- id: in_tip_labels
  doc: "add tip labels (default for small trees with <30\nleaves)"
  type: boolean?
  inputBinding:
    prefix: --tip-labels
- id: in_no_tip_labels
  doc: "don't show tip labels (default for small trees with\n>=30 leaves)"
  type: boolean?
  inputBinding:
    prefix: --no-tip-labels
- id: in_keep_overhangs
  doc: do not fill terminal gaps
  type: boolean?
  inputBinding:
    prefix: --keep-overhangs
- id: in_zero_based
  doc: zero based mutation indexing
  type: boolean?
  inputBinding:
    prefix: --zero-based
- id: in_reconstruct_tip_states
  doc: "overwrite ambiguous states on tips with the most\nlikely inferred state"
  type: boolean?
  inputBinding:
    prefix: --reconstruct-tip-states
- id: in_report_ambiguous
  doc: include transitions involving ambiguous states
  type: boolean?
  inputBinding:
    prefix: --report-ambiguous
- id: in_verbose
  doc: verbosity of output 0-6
  type: long?
  inputBinding:
    prefix: --verbose
- id: in_outdir
  doc: directory to write the output to
  type: Directory?
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: directory to write the output to
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/treetime:0.8.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- treetime
