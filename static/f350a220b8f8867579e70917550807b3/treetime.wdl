version 1.0

task Treetime {
  input {
    File? tree
    Int? sequence_length
    File? aln
    File? vcf_reference
    Float? dates
    String? name_column
    String? date_column
    Int? clock_filter
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
    Float? relax
    Int? max_iter
    String? coalescent
    Int? n_skyline
    File? plot_tree
    File? plot_rtt
    Boolean? tip_labels
    Boolean? no_tip_labels
    Boolean? keep_overhangs
    Boolean? zero_based
    Boolean? reconstruct_tip_states
    Boolean? report_ambiguous
    Int? verbose
    Directory? outdir
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
      ~{if (keep_root) then "--keep-root" else ""} \
      ~{if defined(tip_slack) then ("--tip-slack " +  '"' + tip_slack + '"') else ""} \
      ~{if (covariation) then "--covariation" else ""} \
      ~{if defined(gtr) then ("--gtr " +  '"' + gtr + '"') else ""} \
      ~{if defined(gtr_params) then ("--gtr-params " +  '"' + gtr_params + '"') else ""} \
      ~{if (aa) then "--aa" else ""} \
      ~{if defined(clock_rate) then ("--clock-rate " +  '"' + clock_rate + '"') else ""} \
      ~{if defined(clock_std_dev) then ("--clock-std-dev " +  '"' + clock_std_dev + '"') else ""} \
      ~{if defined(branch_length_mode) then ("--branch-length-mode " +  '"' + branch_length_mode + '"') else ""} \
      ~{if (confidence) then "--confidence" else ""} \
      ~{if (keep_poly_to_mies) then "--keep-polytomies" else ""} \
      ~{if defined(relax) then ("--relax " +  '"' + relax + '"') else ""} \
      ~{if defined(max_iter) then ("--max-iter " +  '"' + max_iter + '"') else ""} \
      ~{if defined(coalescent) then ("--coalescent " +  '"' + coalescent + '"') else ""} \
      ~{if defined(n_skyline) then ("--n-skyline " +  '"' + n_skyline + '"') else ""} \
      ~{if defined(plot_tree) then ("--plot-tree " +  '"' + plot_tree + '"') else ""} \
      ~{if defined(plot_rtt) then ("--plot-rtt " +  '"' + plot_rtt + '"') else ""} \
      ~{if (tip_labels) then "--tip-labels" else ""} \
      ~{if (no_tip_labels) then "--no-tip-labels" else ""} \
      ~{if (keep_overhangs) then "--keep-overhangs" else ""} \
      ~{if (zero_based) then "--zero-based" else ""} \
      ~{if (reconstruct_tip_states) then "--reconstruct-tip-states" else ""} \
      ~{if (report_ambiguous) then "--report-ambiguous" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tree: "Name of file containing the tree in newick, nexus, or\\nphylip format. If none is provided, treetime will\\nattempt to build a tree from the alignment using\\nfasttree, iqtree, or raxml (assuming they are\\ninstalled)"
    sequence_length: "length of the sequence, used to calculate expected\\nvariation in branch length. Not required if alignment\\nis provided."
    aln: "alignment file (fasta)"
    vcf_reference: "only for vcf input: fasta file of the sequence the VCF\\nwas mapped to."
    dates: "csv file with dates for nodes with 'node_name, date'\\nwhere date is float (as in 2012.15)"
    name_column: "label of the column to be used as taxon name"
    date_column: "label of the column to be used as sampling date"
    clock_filter: "ignore tips that don't follow a loose clock, 'clock-\\nfilter=number of interquartile ranges from\\nregression'. Default=3.0, set to 0 to switch off."
    re_root: "Reroot the tree using root-to-tip regression. Valid\\nchoices are 'min_dev', 'least-squares', and 'oldest'.\\n'least-squares' adjusts the root to minimize residuals\\nof the root-to-tip vs sampling time regression,\\n'min_dev' minimizes variance of root-to-tip distances.\\n'least-squares' can be combined with --covariation to\\naccount for shared ancestry. Alternatively, you can\\nspecify a node name or a list of node names to be used\\nas outgroup or use 'oldest' to reroot to the oldest\\nnode. By default, TreeTime will reroot using 'least-\\nsquares'. Use --keep-root to keep the current root."
    keep_root: "don't reroot the tree. Otherwise, reroot to minimize\\nthe the residual of the regression of root-to-tip\\ndistance and sampling time"
    tip_slack: "excess variance associated with terminal nodes\\naccounting for overdisperion of the molecular clock"
    covariation: "Account for covariation when estimating rates or\\nrerooting using root-to-tip regression, default False."
    gtr: "GTR model to use. '--gtr infer' will infer a model\\nfrom the data. Alternatively, specify the model type.\\nIf the specified model requires additional options,\\nuse '--gtr-params' to specify those."
    gtr_params: "GTR parameters for the model specified by the --gtr\\nargument. The parameters should be feed as 'key=value'\\nlist of parameters. Example: '--gtr K80 --gtr-params\\nkappa=0.2 pis=0.25,0.25,0.25,0.25'. See the exact\\ndefinitions of the parameters in the GTR creation\\nmethods in treetime/nuc_models.py or\\ntreetime/aa_models.py"
    aa: "use aminoacid alphabet"
    clock_rate: "if specified, the rate of the molecular clock won't be\\noptimized."
    clock_std_dev: "standard deviation of the provided clock rate estimate"
    branch_length_mode: "If set to 'input', the provided branch length will be\\nused without modification. Note that branch lengths\\noptimized by treetime are only accurate at short\\nevolutionary distances."
    confidence: "estimate confidence intervals of divergence times."
    keep_poly_to_mies: "Don't resolve polytomies using temporal information."
    relax: "RELAX   use an autocorrelated molecular clock. Strength of the\\ngaussian priors on branch specific rate deviation and\\nthe coupling of parent and offspring rates can be\\nspecified e.g. as --relax 1.0 0.5. Values around 1.0\\ncorrespond to weak priors, larger values constrain\\nrate deviations more strongly. Coupling 0 (--relax 1.0\\n0) corresponds to an un-correlated clock."
    max_iter: "maximal number of iterations the inference cycle is\\nrun. Note that for polytomy resolution and coalescence\\nmodels max_iter should be at least 2"
    coalescent: "coalescent time scale -- sensible values are on the\\norder of the average hamming distance of\\ncontemporaneous sequences. In addition, 'opt'\\n'skyline' are valid options and estimate a constant\\ncoalescent rate or a piecewise linear coalescent rate\\nhistory"
    n_skyline: "number of grid points in skyline coalescent model"
    plot_tree: "filename to save the plot to. Suffix will determine\\nformat (choices pdf, png, svg, default=pdf)"
    plot_rtt: "filename to save the plot to. Suffix will determine\\nformat (choices pdf, png, svg, default=pdf)"
    tip_labels: "add tip labels (default for small trees with <30\\nleaves)"
    no_tip_labels: "don't show tip labels (default for small trees with\\n>=30 leaves)"
    keep_overhangs: "do not fill terminal gaps"
    zero_based: "zero based mutation indexing"
    reconstruct_tip_states: "overwrite ambiguous states on tips with the most\\nlikely inferred state"
    report_ambiguous: "include transitions involving ambiguous states"
    verbose: "verbosity of output 0-6"
    outdir: "directory to write the output to"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}