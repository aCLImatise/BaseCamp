version 1.0

task Treetime {
  input {
    String? tree
    String? sequence_length
    String? aln
    String? vcf_reference
    String? dates
    String? name_column
    String? date_column
    String? clock_filter
    Array[String] re_root
    Boolean? keep_root
    String? tip_slack
    Boolean? covariation
    String? gtr
    Array[String] gtr_params
    Boolean? aa
    String? clock_rate
    String? clock_std_dev
    String? branch_length_mode
    Boolean? confidence
    Boolean? keep_poly_to_mies
    String? relax
    Int? max_iter
    String? coalescent
    String? n_skyline
    String? plot_tree
    String? plot_rtt
    Boolean? tip_labels
    Boolean? no_tip_labels
    Boolean? keep_overhangs
    Boolean? zero_based
    Boolean? reconstruct_tip_states
    Boolean? report_ambiguous
    String? verbose
    String? outdir
  }
  command <<<
    treetime \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(sequence_length) then ("--sequence-length " +  '"' + sequence_length + '"') else ""} \
      ~{if defined(aln) then ("--aln " +  '"' + aln + '"') else ""} \
      ~{if defined(vcf_reference) then ("--vcf-reference " +  '"' + vcf_reference + '"') else ""} \
      ~{if defined(dates) then ("--dates " +  '"' + dates + '"') else ""} \
      ~{if defined(name_column) then ("--name-column " +  '"' + name_column + '"') else ""} \
      ~{if defined(date_column) then ("--date-column " +  '"' + date_column + '"') else ""} \
      ~{if defined(clock_filter) then ("--clock-filter " +  '"' + clock_filter + '"') else ""} \
      ~{if defined(re_root) then ("--reroot " +  '"' + re_root + '"') else ""} \
      ~{true="--keep-root" false="" keep_root} \
      ~{if defined(tip_slack) then ("--tip-slack " +  '"' + tip_slack + '"') else ""} \
      ~{true="--covariation" false="" covariation} \
      ~{if defined(gtr) then ("--gtr " +  '"' + gtr + '"') else ""} \
      ~{if defined(gtr_params) then ("--gtr-params " +  '"' + gtr_params + '"') else ""} \
      ~{true="--aa" false="" aa} \
      ~{if defined(clock_rate) then ("--clock-rate " +  '"' + clock_rate + '"') else ""} \
      ~{if defined(clock_std_dev) then ("--clock-std-dev " +  '"' + clock_std_dev + '"') else ""} \
      ~{if defined(branch_length_mode) then ("--branch-length-mode " +  '"' + branch_length_mode + '"') else ""} \
      ~{true="--confidence" false="" confidence} \
      ~{true="--keep-polytomies" false="" keep_poly_to_mies} \
      ~{if defined(relax) then ("--relax " +  '"' + relax + '"') else ""} \
      ~{if defined(max_iter) then ("--max-iter " +  '"' + max_iter + '"') else ""} \
      ~{if defined(coalescent) then ("--coalescent " +  '"' + coalescent + '"') else ""} \
      ~{if defined(n_skyline) then ("--n-skyline " +  '"' + n_skyline + '"') else ""} \
      ~{if defined(plot_tree) then ("--plot-tree " +  '"' + plot_tree + '"') else ""} \
      ~{if defined(plot_rtt) then ("--plot-rtt " +  '"' + plot_rtt + '"') else ""} \
      ~{true="--tip-labels" false="" tip_labels} \
      ~{true="--no-tip-labels" false="" no_tip_labels} \
      ~{true="--keep-overhangs" false="" keep_overhangs} \
      ~{true="--zero-based" false="" zero_based} \
      ~{true="--reconstruct-tip-states" false="" reconstruct_tip_states} \
      ~{true="--report-ambiguous" false="" report_ambiguous} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    tree: "Name of file containing the tree in newick, nexus, or phylip format. If none is provided, treetime will attempt to build a tree from the alignment using fasttree, iqtree, or raxml (assuming they are installed)"
    sequence_length: "length of the sequence, used to calculate expected variation in branch length. Not required if alignment is provided."
    aln: "alignment file (fasta)"
    vcf_reference: "only for vcf input: fasta file of the sequence the VCF was mapped to."
    dates: "csv file with dates for nodes with 'node_name, date' where date is float (as in 2012.15)"
    name_column: "label of the column to be used as taxon name"
    date_column: "label of the column to be used as sampling date"
    clock_filter: "ignore tips that don't follow a loose clock, 'clock- filter=number of interquartile ranges from regression'. Default=3.0, set to 0 to switch off."
    re_root: "Reroot the tree using root-to-tip regression. Valid choices are 'min_dev', 'least-squares', and 'oldest'. 'least-squares' adjusts the root to minimize residuals of the root-to-tip vs sampling time regression, 'min_dev' minimizes variance of root-to-tip distances. 'least-squares' can be combined with --covariation to account for shared ancestry. Alternatively, you can specify a node name or a list of node names to be used as outgroup or use 'oldest' to reroot to the oldest node. By default, TreeTime will reroot using 'least- squares'. Use --keep-root to keep the current root."
    keep_root: "don't reroot the tree. Otherwise, reroot to minimize the the residual of the regression of root-to-tip distance and sampling time"
    tip_slack: "excess variance associated with terminal nodes accounting for overdisperion of the molecular clock"
    covariation: "Account for covariation when estimating rates or rerooting using root-to-tip regression, default False."
    gtr: "GTR model to use. '--gtr infer' will infer a model from the data. Alternatively, specify the model type. If the specified model requires additional options, use '--gtr-params' to specify those."
    gtr_params: "GTR parameters for the model specified by the --gtr argument. The parameters should be feed as 'key=value' list of parameters. Example: '--gtr K80 --gtr-params kappa=0.2 pis=0.25,0.25,0.25,0.25'. See the exact definitions of the parameters in the GTR creation methods in treetime/nuc_models.py or treetime/aa_models.py"
    aa: "use aminoacid alphabet"
    clock_rate: "if specified, the rate of the molecular clock won't be optimized."
    clock_std_dev: "standard deviation of the provided clock rate estimate"
    branch_length_mode: "If set to 'input', the provided branch length will be used without modification. Note that branch lengths optimized by treetime are only accurate at short evolutionary distances."
    confidence: "estimate confidence intervals of divergence times."
    keep_poly_to_mies: "Don't resolve polytomies using temporal information."
    relax: "RELAX   use an autocorrelated molecular clock. Strength of the gaussian priors on branch specific rate deviation and the coupling of parent and offspring rates can be specified e.g. as --relax 1.0 0.5. Values around 1.0 correspond to weak priors, larger values constrain rate deviations more strongly. Coupling 0 (--relax 1.0 0) corresponds to an un-correlated clock."
    max_iter: "maximal number of iterations the inference cycle is run. Note that for polytomy resolution and coalescence models max_iter should be at least 2"
    coalescent: "coalescent time scale -- sensible values are on the order of the average hamming distance of contemporaneous sequences. In addition, 'opt' 'skyline' are valid options and estimate a constant coalescent rate or a piecewise linear coalescent rate history"
    n_skyline: "number of grid points in skyline coalescent model"
    plot_tree: "filename to save the plot to. Suffix will determine format (choices pdf, png, svg, default=pdf)"
    plot_rtt: "filename to save the plot to. Suffix will determine format (choices pdf, png, svg, default=pdf)"
    tip_labels: "add tip labels (default for small trees with <30 leaves)"
    no_tip_labels: "don't show tip labels (default for small trees with >=30 leaves)"
    keep_overhangs: "do not fill terminal gaps"
    zero_based: "zero based mutation indexing"
    reconstruct_tip_states: "overwrite ambiguous states on tips with the most likely inferred state"
    report_ambiguous: "include transitions involving ambiguous states"
    verbose: "verbosity of output 0-6"
    outdir: "directory to write the output to"
  }
}