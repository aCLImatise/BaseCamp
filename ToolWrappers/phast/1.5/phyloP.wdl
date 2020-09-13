version 1.0

task PhyloP {
  input {
    Boolean? base_by_base
    Int? confidence_interval
    File? msa_format
    Int? method
    Boolean? wig_scores
    Int? ref_idx
    Int? mode
    File? features
    Boolean? gff_scores
    String? subtree
    Boolean? branch
    File? chrom
    File? log
    Int? seed
    Boolean? no_prune
    Int? null
    Boolean? posterior
    Boolean? fit_model
    Float? epsilon
    Boolean? quantiles
    String option_dot
    String lrt_dot
    Int number_dot
    String format_dot
  }
  command <<<
    phyloP \
      ~{option_dot} \
      ~{lrt_dot} \
      ~{number_dot} \
      ~{format_dot} \
      ~{if (base_by_base) then "--base-by-base" else ""} \
      ~{if defined(confidence_interval) then ("--confidence-interval " +  '"' + confidence_interval + '"') else ""} \
      ~{if defined(msa_format) then ("--msa-format " +  '"' + msa_format + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if (wig_scores) then "--wig-scores" else ""} \
      ~{if defined(ref_idx) then ("--refidx " +  '"' + ref_idx + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(features) then ("--features " +  '"' + features + '"') else ""} \
      ~{if (gff_scores) then "--gff-scores" else ""} \
      ~{if defined(subtree) then ("--subtree " +  '"' + subtree + '"') else ""} \
      ~{if (branch) then "--branch" else ""} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (no_prune) then "--no-prune" else ""} \
      ~{if defined(null) then ("--null " +  '"' + null + '"') else ""} \
      ~{if (posterior) then "--posterior" else ""} \
      ~{if (fit_model) then "--fit-model" else ""} \
      ~{if defined(epsilon) then ("--epsilon " +  '"' + epsilon + '"') else ""} \
      ~{if (quantiles) then "--quantiles" else ""}
  >>>
  parameter_meta {
    base_by_base: "Like --wig-scores, but outputs multiple values per site, in a\\nmethod-dependent way.  With 'SPH', output includes mean and\\nvariance of posterior distribution, with LRT and SCORE it\\nincludes the estimated scale factor(s) and test statistics, and\\nwith GERP it includes the estimated numbers of neutral,\\nobserved, and rejected substitutions, along with the number of\\nspecies available at each site."
    confidence_interval: "Allow for uncertainty in the estimate of the actual number of\\nsubstitutions by using a (central) confidence interval about the\\nmean of the specified size (0 < val < 1).  To be conservative, the\\nmaximum of this interval is used when computing a p-value of\\nconservation, and the minimum is used when computing a p-value of\\nacceleration.  The variance of the posterior is computed\\nexactly, but the confidence interval is based on the assumption\\nthat the combined distribution will be approximately normal (true\\nfor large numbers of sites by central limit theorem)."
    msa_format: "|PHYLIP|MPM|MAF|SS\\nAlignment format (default is to guess format from file contents)."
    method: "|LRT|SCORE|GERP\\nMethod used to compute p-values or conservation/acceleration scores\\n(Default SPH).  The likelihood ratio test (LRT) and score test\\n(SCORE) compare an alternative model having a free scale parameter\\nwith the given neutral model, or, if --subtree is used, an\\nalternative model having free scale parameters for the supertree\\nand subtree with a null model having a single free scale parameter.\\nP-values are computed by comparing test statistics with asymptotic\\nchi-square null distributions.  The GERP-like method (GERP)\\nestimates the number of \\\"rejected substitutions\\\" per base by\\ncomparing the (per-site) maximum likelihood expected number of\\nsubstitutions with the expected number under the neutral model.\\nCurrently LRT, SCORE, and GERP can be used only with\\n--base-by-base, --wig-scores, or --features."
    wig_scores: "Compute separate p-values per site, and then compute site-specific\\nconservation (acceleration) scores as -log10(p).  Output base-by-base\\nscores in fixed-step wig format, using the coordinate system of the\\nreference sequence (see --refidx).  In GERP mode, outputs rejected\\nsubstitutions per site instead of -log10 p-values."
    ref_idx: "(for use with --wig-scores or --base-by-base) Use coordinate frame\\nof specified sequence in output.  Default value is 1, first\\nsequence in alignment; 0 indicates coordinate frame of entire\\nmultiple alignment."
    mode: "|ACC|NNEUT|CONACC\\n(For use with --wig-scores, --base-by-base, or --features) Whether\\nto compute one-sided p-values so that small p (large -log10 p)\\nindicates unexpected conservation (CON; the default) or\\nacceleration (ACC); or two-sided p-values such that small p\\nindicates an unexpected departure from neutrality (NNEUT).  The\\nfourth option (CONACC) uses positive values (p-values or scores) to\\nindicate conservation and negative values to indicate acceleration.\\nIn GERP mode, CON and CONACC both report the number of rejected\\nsubstitutions R (which may be negative), while ACC reports -R, and\\nNNEUT reports abs(R)."
    features: "Read features from <file> (GFF or BED format) and output a\\ntable of p-values and related statistics with one row per\\nfeature.  The features are assumed to use the coordinate frame\\nof the first sequence in the alignment.  Not for use with\\n--null or --posterior.  See also --gff-scores."
    gff_scores: "(For use with features)  Instead of a table, output a GFF and\\nassign each feature a score equal to its -log10 p-value."
    subtree: "(Not available in GERP mode) Partition the tree into the subtree\\nbeneath the node whose name is given and the complementary\\nsupertree, and consider conservation/acceleration in the subtree\\ngiven the supertree.  The branch above the specified node is\\nincluded with the subtree.  Thus, given the tree\\n\\\"((human,chimp)primate,(mouse,rat)rodent)\\\", the option \\\"--subtree\\nprimate\\\" will create one partition consisting of human, chimp, and\\nthe branch leading to them, and another partition consisting of the\\nrest of the tree; \\\"--subtree human\\\" will create one partition\\nconsisting only of human and the branch leading to it and another\\npartition consisting of the rest of the tree.  In 'SPH' mode, a\\nreversible substitution model is assumed."
    branch: "<node-name(s)>\\n(Not available in GERP or SPH mode).  Like subtree, but partitions\\nthe tree into the set of named branches (each named by its child\\nnode), and all the remaining branches.  Then tests for conservation/\\nacceleration in the set of named branches relative to the others.\\nThe argument is a comma-delimited list of child nodes."
    chrom: "(Optionally use with --wig-scores or --base-by-base) Chromosome\\nname for wig output.  Default is root of multiple alignment\\nfilename."
    log: "Write log to <fname> describing details of parameter optimization.\\nUseful for debugging.  (Warning: may produce large file.)"
    seed: "Provide a random number seed, should be an integer >=1.  Random\\nnumbers are used in some cases to generate starting values for\\noptimization.  If not specified will use a seed based on the\\ncurrent time."
    no_prune: "Do not prune species from tree which are not in alignment.  Rather,\\ntreat these species as having missing data in the alignment.  Missing\\ndata does have an effect on the results when --method SPH is used."
    null: "Compute just the null (prior) distribution of the number of\\nsubstitutions, as defined by the tree model and the given\\nnumber of sites, and output as a table.  The 'alignment'\\nargument will be ignored.  If used with --subtree, the joint\\ndistribution over the number of substitutions in the specified\\nsupertree and subtree will be output instead."
    posterior: "Compute just the posterior distribution of the number of\\nsubstitutions, given the alignment and the model, and output\\nas a table.  If used with --subtree, the joint distribution\\nover the number of substitutions in the specified supertree\\nand subtree will be output instead."
    fit_model: "Fit model to data before computing posterior distribution, by\\nestimating a scale factor for the whole tree or (if --subtree)\\nseparate scale factors for the specified subtree and supertree.\\nMakes p-values less conservative.  This option has no effect with\\n--null and currently cannot be used with --features.  It can be\\nused with --wig-scores and --base-by-base."
    epsilon: "(Default 1e-10 or 1e-6 if --wig-scores or --base-by-base) Threshold\\nused in truncating tails of distributions; tail probabilities less\\nthan this value are discarded.  To get accurate p-values smaller\\nthan 1e-10, this option will need to be used, at some cost in\\nspeed.  Note that truncation affects only *right* tails, not left\\ntails, so it should be an issue only with p-values of acceleration."
    quantiles: "(For use with --null or --posterior) Report quantiles of\\ndistribution rather than whole distribution."
    option_dot: "DESCRIPTION:"
    lrt_dot: "On the other hand, SCORE appears to have slightly less power than"
    number_dot: "This is a conservative estimate, because it is biased toward"
    format_dot: "OPTIONS:"
  }
  output {
    File out_stdout = stdout()
    File out_features = "${in_features}"
    File out_chrom = "${in_chrom}"
  }
}