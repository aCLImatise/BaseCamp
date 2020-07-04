version 1.0

task PhastCons {
  input {
    Boolean? score
    Boolean? no_post_probs
    String? estimate_trees
    String? lnl
    String? log
    String? ref_idx
    String? seqname
    String? id_pref
    Boolean? quiet
    Boolean? indels_only
    String? alias_names_according
    String? states
    String? reflect_strand
    String? require_informative
    String? not_informative
    Boolean? ignore_missing
    String models_dot
    String elements_dot
  }
  command <<<
    phastCons \
      ~{models_dot} \
      ~{elements_dot} \
      ~{true="--score" false="" score} \
      ~{true="--no-post-probs" false="" no_post_probs} \
      ~{if defined(estimate_trees) then ("--estimate-trees " +  '"' + estimate_trees + '"') else ""} \
      ~{if defined(lnl) then ("--lnl " +  '"' + lnl + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(ref_idx) then ("--refidx " +  '"' + ref_idx + '"') else ""} \
      ~{if defined(seqname) then ("--seqname " +  '"' + seqname + '"') else ""} \
      ~{if defined(id_pref) then ("--idpref " +  '"' + id_pref + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--indels-only" false="" indels_only} \
      ~{if defined(alias_names_according) then ("--alias " +  '"' + alias_names_according + '"') else ""} \
      ~{if defined(states) then ("--states " +  '"' + states + '"') else ""} \
      ~{if defined(reflect_strand) then ("--reflect-strand " +  '"' + reflect_strand + '"') else ""} \
      ~{if defined(require_informative) then ("--require-informative " +  '"' + require_informative + '"') else ""} \
      ~{if defined(not_informative) then ("--not-informative " +  '"' + not_informative + '"') else ""} \
      ~{true="--ignore-missing" false="" ignore_missing}
  >>>
  parameter_meta {
    score: "(Optionally use with --viterbi) Assign a log-odds score to each prediction."
    no_post_probs: "Suppress output of posterior probabilities.  Useful if only discrete elements or likelihood is of interest."
    estimate_trees: "noncons.mod"
    lnl: "Compute total log likelihood using the forward algorithm and write to specified file."
    log: "(Optionally use when estimating free parameters) Write log of optimization procedure to specified file."
    ref_idx: "Use coordinate frame of specified sequence in output.  Default value is 1, first sequence in alignment; 0 indicates coordinate frame of entire multiple alignment."
    seqname: "(Optionally use with --viterbi) Use specified string for 'seqname' (GFF) or 'chrom' field in output file.  Default is obtained from input file name (double filename root, e.g., \"chr22\" if input file is \"chr22.35.ss\")."
    id_pref: "(Optionally use with --viterbi) Use specified string as prefix of generated ids in output file.  Can be used to ensure ids are unique.  Default is obtained from input file name (single filename root, e.g., \"chr22.35\" if input file is \"chr22.35.ss\")."
    quiet: "Proceed quietly (without updates to stderr)."
    indels_only: "Like --indels but force the use of a single-state HMM.  This option allows the effect of the indel model in isolation to be observed.  Implies --no-post-probs.  Use with --lnl."
    alias_names_according: "Alias names in input alignment according to given definition, e.g., \"hg17=human; mm5=mouse; rn3=rat\".  Useful with default *.mod files, e.g., with --coding-potential.  (Default models use generic common names such as \"human\", \"mouse\", and \"rat\".  This option allows a mapping to be established between the leaves of trees in these files and the sequences of an alignment that uses an alternative naming convention.)"
    states: "States of interest in the phylo-HMM, specified by number (indexing starts with 0), or if --catmap, by category name. Default value is 1.  Choosing --states \"0,1,2\" will cause output of the sum of the posterior probabilities for states 0, 1, and 2, and/or of regions in which the Viterbi path coincides with (any of) states 0, 1, or 2 (see --viterbi)."
    reflect_strand: "(Optionally use with --hmm) Given an HMM describing the forward strand, create a larger HMM that allows for features on both strands by \"reflecting\" the original HMM about the specified \"pivot\" states.  The new HMM will be used for prediction on both strands.  States can be specified by number (indexing starts with 0), or if --catmap, by category name."
    require_informative: "Require \"informative\" columns (i.e., columns with more than two non-missing-data characters, excluding sequences specified by --not-informative) in specified HMM states, to help eliminate false positive predictions.  States can be specified by number (indexing starts with 0) or, if --catmap is used, by category name.  Non-informative columns will be given emission probabilities of zero.  By default, this option is active, with <states> equal to the set of states of interest for prediction (as specified by --states).  Use \"none\" to disable completely.  "
    not_informative: "Do not consider the specified sequences (listed by name) when deciding whether a column is informative.  This option may be useful when sequences are present that are very close to the reference sequence and thus do not contribute much in the way of phylogenetic information.  E.g., one might use \"--not-informative chimp\" with a human-referenced multiple alignment including chimp sequence, to avoid false-positive predictions based only on human/chimp alignments (can be a problem, e.g., with --coding-potential)."
    ignore_missing: "(For use when estimating transition probabilities) Ignore regions of missing data in all sequences but the reference sequence (excluding sequences specified by --not-informative) when estimating transition probabilities.  Can help avoid too-low estimates of <mu> and <nu> or too-high estimates of <lambda>.  Warning: this option should not be used with --viterbi because coordinates in output will be unrecognizable."
    models_dot: "Output the conservation scores but not the conserved"
    elements_dot: "phastCons mydata.ss cons.mod,noncons.mod > scores.wig"
  }
}