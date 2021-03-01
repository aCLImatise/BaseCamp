class: CommandLineTool
id: phyloP.cwl
inputs:
- id: in_base_by_base
  doc: "Like --wig-scores, but outputs multiple values per site, in a\nmethod-dependent\
    \ way.  With 'SPH', output includes mean and\nvariance of posterior distribution,\
    \ with LRT and SCORE it\nincludes the estimated scale factor(s) and test statistics,\
    \ and\nwith GERP it includes the estimated numbers of neutral,\nobserved, and\
    \ rejected substitutions, along with the number of\nspecies available at each\
    \ site."
  type: boolean?
  inputBinding:
    prefix: --base-by-base
- id: in_confidence_interval
  doc: "Allow for uncertainty in the estimate of the actual number of\nsubstitutions\
    \ by using a (central) confidence interval about the\nmean of the specified size\
    \ (0 < val < 1).  To be conservative, the\nmaximum of this interval is used when\
    \ computing a p-value of\nconservation, and the minimum is used when computing\
    \ a p-value of\nacceleration.  The variance of the posterior is computed\nexactly,\
    \ but the confidence interval is based on the assumption\nthat the combined distribution\
    \ will be approximately normal (true\nfor large numbers of sites by central limit\
    \ theorem)."
  type: long?
  inputBinding:
    prefix: --confidence-interval
- id: in_msa_format
  doc: "|PHYLIP|MPM|MAF|SS\nAlignment format (default is to guess format from file\
    \ contents)."
  type: File?
  inputBinding:
    prefix: --msa-format
- id: in_method
  doc: "|LRT|SCORE|GERP\nMethod used to compute p-values or conservation/acceleration\
    \ scores\n(Default SPH).  The likelihood ratio test (LRT) and score test\n(SCORE)\
    \ compare an alternative model having a free scale parameter\nwith the given neutral\
    \ model, or, if --subtree is used, an\nalternative model having free scale parameters\
    \ for the supertree\nand subtree with a null model having a single free scale\
    \ parameter.\nP-values are computed by comparing test statistics with asymptotic\n\
    chi-square null distributions.  The GERP-like method (GERP)\nestimates the number\
    \ of \"rejected substitutions\" per base by\ncomparing the (per-site) maximum\
    \ likelihood expected number of\nsubstitutions with the expected number under\
    \ the neutral model.\nCurrently LRT, SCORE, and GERP can be used only with\n--base-by-base,\
    \ --wig-scores, or --features."
  type: long?
  inputBinding:
    prefix: --method
- id: in_wig_scores
  doc: "Compute separate p-values per site, and then compute site-specific\nconservation\
    \ (acceleration) scores as -log10(p).  Output base-by-base\nscores in fixed-step\
    \ wig format, using the coordinate system of the\nreference sequence (see --refidx).\
    \  In GERP mode, outputs rejected\nsubstitutions per site instead of -log10 p-values."
  type: boolean?
  inputBinding:
    prefix: --wig-scores
- id: in_ref_idx
  doc: "(for use with --wig-scores or --base-by-base) Use coordinate frame\nof specified\
    \ sequence in output.  Default value is 1, first\nsequence in alignment; 0 indicates\
    \ coordinate frame of entire\nmultiple alignment."
  type: long?
  inputBinding:
    prefix: --refidx
- id: in_mode
  doc: "|ACC|NNEUT|CONACC\n(For use with --wig-scores, --base-by-base, or --features)\
    \ Whether\nto compute one-sided p-values so that small p (large -log10 p)\nindicates\
    \ unexpected conservation (CON; the default) or\nacceleration (ACC); or two-sided\
    \ p-values such that small p\nindicates an unexpected departure from neutrality\
    \ (NNEUT).  The\nfourth option (CONACC) uses positive values (p-values or scores)\
    \ to\nindicate conservation and negative values to indicate acceleration.\nIn\
    \ GERP mode, CON and CONACC both report the number of rejected\nsubstitutions\
    \ R (which may be negative), while ACC reports -R, and\nNNEUT reports abs(R)."
  type: long?
  inputBinding:
    prefix: --mode
- id: in_features
  doc: "Read features from <file> (GFF or BED format) and output a\ntable of p-values\
    \ and related statistics with one row per\nfeature.  The features are assumed\
    \ to use the coordinate frame\nof the first sequence in the alignment.  Not for\
    \ use with\n--null or --posterior.  See also --gff-scores."
  type: File?
  inputBinding:
    prefix: --features
- id: in_gff_scores
  doc: "(For use with features)  Instead of a table, output a GFF and\nassign each\
    \ feature a score equal to its -log10 p-value."
  type: boolean?
  inputBinding:
    prefix: --gff-scores
- id: in_subtree
  doc: "(Not available in GERP mode) Partition the tree into the subtree\nbeneath\
    \ the node whose name is given and the complementary\nsupertree, and consider\
    \ conservation/acceleration in the subtree\ngiven the supertree.  The branch above\
    \ the specified node is\nincluded with the subtree.  Thus, given the tree\n\"\
    ((human,chimp)primate,(mouse,rat)rodent)\", the option \"--subtree\nprimate\"\
    \ will create one partition consisting of human, chimp, and\nthe branch leading\
    \ to them, and another partition consisting of the\nrest of the tree; \"--subtree\
    \ human\" will create one partition\nconsisting only of human and the branch leading\
    \ to it and another\npartition consisting of the rest of the tree.  In 'SPH' mode,\
    \ a\nreversible substitution model is assumed."
  type: string?
  inputBinding:
    prefix: --subtree
- id: in_branch
  doc: "<node-name(s)>\n(Not available in GERP or SPH mode).  Like subtree, but partitions\n\
    the tree into the set of named branches (each named by its child\nnode), and all\
    \ the remaining branches.  Then tests for conservation/\nacceleration in the set\
    \ of named branches relative to the others.\nThe argument is a comma-delimited\
    \ list of child nodes."
  type: boolean?
  inputBinding:
    prefix: --branch
- id: in_chrom
  doc: "(Optionally use with --wig-scores or --base-by-base) Chromosome\nname for\
    \ wig output.  Default is root of multiple alignment\nfilename."
  type: File?
  inputBinding:
    prefix: --chrom
- id: in_log
  doc: "Write log to <fname> describing details of parameter optimization.\nUseful\
    \ for debugging.  (Warning: may produce large file.)"
  type: File?
  inputBinding:
    prefix: --log
- id: in_seed
  doc: "Provide a random number seed, should be an integer >=1.  Random\nnumbers are\
    \ used in some cases to generate starting values for\noptimization.  If not specified\
    \ will use a seed based on the\ncurrent time."
  type: long?
  inputBinding:
    prefix: --seed
- id: in_no_prune
  doc: "Do not prune species from tree which are not in alignment.  Rather,\ntreat\
    \ these species as having missing data in the alignment.  Missing\ndata does have\
    \ an effect on the results when --method SPH is used."
  type: boolean?
  inputBinding:
    prefix: --no-prune
- id: in_null
  doc: "Compute just the null (prior) distribution of the number of\nsubstitutions,\
    \ as defined by the tree model and the given\nnumber of sites, and output as a\
    \ table.  The 'alignment'\nargument will be ignored.  If used with --subtree,\
    \ the joint\ndistribution over the number of substitutions in the specified\n\
    supertree and subtree will be output instead."
  type: long?
  inputBinding:
    prefix: --null
- id: in_posterior
  doc: "Compute just the posterior distribution of the number of\nsubstitutions, given\
    \ the alignment and the model, and output\nas a table.  If used with --subtree,\
    \ the joint distribution\nover the number of substitutions in the specified supertree\n\
    and subtree will be output instead."
  type: boolean?
  inputBinding:
    prefix: --posterior
- id: in_fit_model
  doc: "Fit model to data before computing posterior distribution, by\nestimating\
    \ a scale factor for the whole tree or (if --subtree)\nseparate scale factors\
    \ for the specified subtree and supertree.\nMakes p-values less conservative.\
    \  This option has no effect with\n--null and currently cannot be used with --features.\
    \  It can be\nused with --wig-scores and --base-by-base."
  type: boolean?
  inputBinding:
    prefix: --fit-model
- id: in_epsilon
  doc: "(Default 1e-10 or 1e-6 if --wig-scores or --base-by-base) Threshold\nused\
    \ in truncating tails of distributions; tail probabilities less\nthan this value\
    \ are discarded.  To get accurate p-values smaller\nthan 1e-10, this option will\
    \ need to be used, at some cost in\nspeed.  Note that truncation affects only\
    \ *right* tails, not left\ntails, so it should be an issue only with p-values\
    \ of acceleration."
  type: double?
  inputBinding:
    prefix: --epsilon
- id: in_quantiles
  doc: "(For use with --null or --posterior) Report quantiles of\ndistribution rather\
    \ than whole distribution."
  type: boolean?
  inputBinding:
    prefix: --quantiles
- id: in_option_dot
  doc: 'DESCRIPTION:'
  type: string
  inputBinding:
    position: 0
- id: in_lrt_dot
  doc: On the other hand, SCORE appears to have slightly less power than
  type: string
  inputBinding:
    position: 0
- id: in_number_dot
  doc: This is a conservative estimate, because it is biased toward
  type: long
  inputBinding:
    position: 0
- id: in_format_dot
  doc: 'OPTIONS:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_features
  doc: "Read features from <file> (GFF or BED format) and output a\ntable of p-values\
    \ and related statistics with one row per\nfeature.  The features are assumed\
    \ to use the coordinate frame\nof the first sequence in the alignment.  Not for\
    \ use with\n--null or --posterior.  See also --gff-scores."
  type: File?
  outputBinding:
    glob: $(inputs.in_features)
- id: out_chrom
  doc: "(Optionally use with --wig-scores or --base-by-base) Chromosome\nname for\
    \ wig output.  Default is root of multiple alignment\nfilename."
  type: File?
  outputBinding:
    glob: $(inputs.in_chrom)
hints: []
cwlVersion: v1.1
baseCommand:
- phyloP
