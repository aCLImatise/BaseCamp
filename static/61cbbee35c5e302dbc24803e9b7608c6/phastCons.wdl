version 1.0

task PhastCons {
  input {
    File? msa_format
    String? estimate_rho
    Boolean? score
    Boolean? expected_length
    Float? rho
    String? estimate_trees
    Int? gc
    Int? n_rates
    Boolean? transitions
    Int? target_coverage
    File? viterbi
    File? lnl
    Boolean? no_post_probs
    File? log
    Int? ref_idx
    File? seqname
    File? id_pref
    Boolean? quiet
    Boolean? indels
    Int? max_micro_in_del
    Boolean? in_del_params
    Boolean? indels_only
    Boolean? fc
    Boolean? lambda
    File? coding_potential
    Int? extrapolate
    Int? alias_names_according
    Int? hmm
    File? cat_map
    Int? states
    Int? reflect_strand
    Int? require_informative
    String? not_informative
    Boolean? ignore_missing
    String parameter_dot
    String models_dot
    String elements_dot
  }
  command <<<
    phastCons \
      ~{parameter_dot} \
      ~{models_dot} \
      ~{elements_dot} \
      ~{if defined(msa_format) then ("--msa-format " +  '"' + msa_format + '"') else ""} \
      ~{if defined(estimate_rho) then ("--estimate-rho " +  '"' + estimate_rho + '"') else ""} \
      ~{if (score) then "--score" else ""} \
      ~{if (expected_length) then "--expected-length" else ""} \
      ~{if defined(rho) then ("--rho " +  '"' + rho + '"') else ""} \
      ~{if defined(estimate_trees) then ("--estimate-trees " +  '"' + estimate_trees + '"') else ""} \
      ~{if defined(gc) then ("--gc " +  '"' + gc + '"') else ""} \
      ~{if defined(n_rates) then ("--nrates " +  '"' + n_rates + '"') else ""} \
      ~{if (transitions) then "--transitions" else ""} \
      ~{if defined(target_coverage) then ("--target-coverage " +  '"' + target_coverage + '"') else ""} \
      ~{if (viterbi) then "--viterbi" else ""} \
      ~{if defined(lnl) then ("--lnl " +  '"' + lnl + '"') else ""} \
      ~{if (no_post_probs) then "--no-post-probs" else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(ref_idx) then ("--refidx " +  '"' + ref_idx + '"') else ""} \
      ~{if defined(seqname) then ("--seqname " +  '"' + seqname + '"') else ""} \
      ~{if defined(id_pref) then ("--idpref " +  '"' + id_pref + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (indels) then "--indels" else ""} \
      ~{if defined(max_micro_in_del) then ("--max-micro-indel " +  '"' + max_micro_in_del + '"') else ""} \
      ~{if (in_del_params) then "--indel-params" else ""} \
      ~{if (indels_only) then "--indels-only" else ""} \
      ~{if (fc) then "--FC" else ""} \
      ~{if (lambda) then "--lambda" else ""} \
      ~{if (coding_potential) then "--coding-potential" else ""} \
      ~{if defined(extrapolate) then ("--extrapolate " +  '"' + extrapolate + '"') else ""} \
      ~{if defined(alias_names_according) then ("--alias " +  '"' + alias_names_according + '"') else ""} \
      ~{if defined(hmm) then ("--hmm " +  '"' + hmm + '"') else ""} \
      ~{if defined(cat_map) then ("--catmap " +  '"' + cat_map + '"') else ""} \
      ~{if defined(states) then ("--states " +  '"' + states + '"') else ""} \
      ~{if defined(reflect_strand) then ("--reflect-strand " +  '"' + reflect_strand + '"') else ""} \
      ~{if defined(require_informative) then ("--require-informative " +  '"' + require_informative + '"') else ""} \
      ~{if defined(not_informative) then ("--not-informative " +  '"' + not_informative + '"') else ""} \
      ~{if (ignore_missing) then "--ignore-missing" else ""}
  >>>
  parameter_meta {
    msa_format: "|FASTA|MPM|SS|MAF\\nAlignment file format.  Default is to guess format based on\\nfile contents.  Note that the msa_view program can be used to\\nconvert between formats."
    estimate_rho: "Like --estimate-trees, but estimate only the parameter rho."
    score: "(Optionally use with --viterbi) Assign a log-odds score to\\neach prediction."
    expected_length: "[~]<omega>  {--expected-lengths also allowed,\\nfor backward compatibility}\\n(For use with --target-coverage, alternative to --transitions)\\nSet transition probabilities such that the expected length of\\na conserved element is <omega>.  Specifically, the parameter\\nmu is set to 1/<omega>.  If preceded by '~', <omega> will be\\nestimated, but will be initialized to the specified value."
    rho: "Set the *scale* (overall evolutionary rate) of the model for\\nthe conserved state to be <rho> times that of the model for\\nthe non-conserved state (0 < <rho> < 1; default 0.3).  If used\\nwith --estimate-trees or --estimate-rho, the specified value\\nwill be used for initialization only (rho will be\\nestimated).  This option is ignored if two tree models are\\ngiven."
    estimate_trees: "Estimate free parameters of tree models and write new models\\nto <fname_root>.cons.mod and <fname_root>.noncons.mod."
    gc: "(Optionally use with --estimate-trees or --estimate-rho)\\nAssume a background nucleotide distribution consistent with\\nthe given average G+C content (0 < <val> < 1) when estimating\\ntree models.  (The frequencies of G and C will be set to\\n<val>/2 and the frequencies of A and T will be set to\\n(1-<val>)/2.)  This option overrides the default behavior of\\nestimating the background distribution from the data (if\\n--estimate-trees) or obtaining them from the input model (if\\n--estimate-rho)."
    n_rates: "| <nrates_conserved,nrates_nonconserved>\\n(Optionally use with a discrete-gamma model and --estimate-trees)\\nAssume the specified number of rate categories, instead of the\\nnumber given in the *.mod file.  The shape parameter 'alpha' will\\nbe as given in the *.mod file.  In the case of the default\\ntwo-state HMM, two values can be specified, for the numbers of\\nrates for the conserved and the nonconserved states, resp."
    transitions: "[~]<mu>,<nu>\\nFix the transition probabilities of the two-state HMM as\\nspecified, rather than estimating them by maximum likelihood.\\nAlternatively, if first character of argument is '~', estimate\\nparameters, but initialize to specified values.  The argument\\n<mu> is the probability of transitioning from the conserved to\\nthe non-conserved state, and <nu> is the probability of the\\nreverse transition.  The probabilities of self transitions are\\nthus 1-<mu> and 1-<nu> and the expected lengths of conserved\\nand nonconserved elements are 1/<mu> and 1/<nu>, respectively."
    target_coverage: "(Alternative to --transitions) Constrain transition parameters\\nsuch that the expected fraction of sites in conserved elements\\nis <gamma> (0 < <gamma> < 1).  This is a *prior* rather than\\n*posterior* expectation and assumes stationarity of the\\nstate-transition process.  Adding this constraint causes the\\nratio mu/nu to be fixed at (1-<gamma>)/<gamma>.  If used with\\n--expected-length, the transition probabilities will be\\ncompletely fixed; otherwise the expected-length parameter\\n<omega> will be estimated by maximum likelihood."
    viterbi: "[alternatively --most-conserved], -V <fname>\\nPredict discrete elements using the Viterbi algorithm and\\nwrite to specified file.  Output is in BED format, unless\\n<fname> has suffix \\\".gff\\\", in which case output is in GFF."
    lnl: "Compute total log likelihood using the forward algorithm and\\nwrite to specified file."
    no_post_probs: "Suppress output of posterior probabilities.  Useful if only\\ndiscrete elements or likelihood is of interest."
    log: "(Optionally use when estimating free parameters) Write log of\\noptimization procedure to specified file."
    ref_idx: "Use coordinate frame of specified sequence in output.  Default\\nvalue is 1, first sequence in alignment; 0 indicates\\ncoordinate frame of entire multiple alignment."
    seqname: "(Optionally use with --viterbi) Use specified string\\nfor 'seqname' (GFF) or 'chrom' field in output file.  Default\\nis obtained from input file name (double filename root, e.g.,\\n\\\"chr22\\\" if input file is \\\"chr22.35.ss\\\")."
    id_pref: "(Optionally use with --viterbi) Use specified string as\\nprefix of generated ids in output file.  Can be used to ensure\\nids are unique.  Default is obtained from input file name\\n(single filename root, e.g., \\\"chr22.35\\\" if input file is\\n\\\"chr22.35.ss\\\")."
    quiet: "Proceed quietly (without updates to stderr)."
    indels: "Expand HMM state space to model indels as described in Siepel\\n& Haussler (2004)."
    max_micro_in_del: "(Optionally use with --indels) Maximum length of an alignment\\ngap to be considered a \\\"micro-indel\\\" and therefore\\naddressed by the indel model.  Gaps longer than this threshold\\nwill be treated as missing data.  Default value is 20."
    in_del_params: "[~]<alpha_0,beta_0,tau_0,alpha_1,beta_1,tau_1>\\n(Optionally use with --indels and default two-state HMM) Fix\\nthe indel parameters at (alpha_0, beta_0, tau_0) for the\\nconserved state and at (alpha_1, beta_1, tau_1) for the\\nnon-conserved state, rather than estimating them by maximum\\nlikelihood.  Alternatively, if first character of argument is\\n'~', estimate parameters, but initialize with specified\\nvalues.  Alpha_j is the rate of insertion events per\\nsubstitution per site in state j (typically ~0.05), beta_j is\\nthe rate of deletion events per substitution per site in state\\nj (typically ~0.05), and tau_j is approximately the inverse\\nof the expected indel length in state j (typically 0.2-0.5)."
    indels_only: "Like --indels but force the use of a single-state HMM.  This\\noption allows the effect of the indel model in isolation to be\\nobserved.  Implies --no-post-probs.  Use with --lnl."
    fc: "(Alternative to --hmm; specify only one *.mod file with this\\noption) Use an HMM with a state for every rate\\ncategory in the given phylogenetic model, and transition\\nprobabilities defined by an autocorrelation parameter lambda\\n(as described by Felsenstein and Churchill, 1996).  A rate\\nconstant for each state (rate category) will be multiplied by\\nthe branch lengths of the phylogenetic model, to create a\\n\\\"scaled\\\" version of the model for that state.  If the\\nphylogenetic model was estimated using Yang's discrete gamma\\nmethod (-k option to phyloFit), then the rate constants will\\nbe defined according to the estimated shape parameter 'alpha',\\nas described by Yang (1994).  Otherwise, a nonparameteric\\nmodel of rate variation must have been used (-K option to\\nphyloFit), and the rate constants will be as defined\\n(explicitly) in the *.mod file.  By default, the parameter\\nlambda will be estimated by maximum likelihood (see --lambda)."
    lambda: "[~]<lambda>\\n(Optionally use with --FC) Fix lambda at the\\nspecified value rather than estimating it by maximum\\nlikelihood.  Alternatively, if first character is '~',\\nestimate but initialize at specified value.  Allowable range\\nis 0-1.  With k rate categories, the transition probability\\nbetween state i and state j will be lambda * I(i == j) +\\n(1-lambda)/k, where I is the indicator function.  Thus, lambda\\n= 0 implies no autocorrelation and lambda = 1 implies perfect\\nautocorrelation."
    coding_potential: "Use parameter settings that cause output to be interpretable\\nas a coding potential score.  By default, a simplified version\\nof exoniphy's phylo-HMM is used, with a noncoding (background)\\nstate, a conserved non-coding (CNS) state, and states for the\\nthree codon positions.  This option implies --catmap \\\"NCATS=4;\\nCNS 1; CDS 2-4\\\" --hmm <default-HMM-file> --states CDS\\n--reflect-strand background,CNS and a set of default *.mod\\nfiles (all of which can be overridden).  This option can be\\nused with or without --indels."
    extrapolate: "| default\\nExtrapolate to a larger set of species based on the given\\nphylogeny (Newick-format).  The trees in the given tree models\\n(*.mod files) must be subtrees of the larger phylogeny.  For\\neach tree model M, a copy will be created of the larger\\nphylogeny, then scaled such that the total branch length of\\nthe subtree corresponding to M's tree equals the total branch\\nlength of M's tree; this new version will then be used in\\nplace of M's tree.  (Any species name present in this tree but\\nnot in the data will be ignored.)  If the string \\\"default\\\"\\nis given instead of a filename, then a phylogeny for 25\\nvertebrate species, estimated from sequence data for Target 1\\n(CFTR) of the NISC Comparative Sequencing Program (Thomas et\\nal., 2003), will be assumed."
    alias_names_according: "Alias names in input alignment according to given definition,\\ne.g., \\\"hg17=human; mm5=mouse; rn3=rat\\\".  Useful with default\\n*.mod files, e.g., with --coding-potential.  (Default models\\nuse generic common names such as \\\"human\\\", \\\"mouse\\\", and\\n\\\"rat\\\".  This option allows a mapping to be established\\nbetween the leaves of trees in these files and the sequences\\nof an alignment that uses an alternative naming convention.)"
    hmm: "Name of HMM file explicitly defining the probabilities of all\\nstate transitions.  States in the file must correspond in\\nnumber and order to phylogenetic models in <mod_fname_list>.\\nExpected file format is as produced by 'hmm_train.'"
    cat_map: "|<string>\\n(Optionally use with --hmm)  Mapping of feature types to category\\nnumbers.  Can give either a filename or an \\\"inline\\\" description\\nof a simple category map, e.g., --catmap \\\"NCATS = 3 ; CDS 1-3\\\"."
    states: "States of interest in the phylo-HMM, specified by number\\n(indexing starts with 0), or if --catmap, by category name.\\nDefault value is 1.  Choosing --states \\\"0,1,2\\\" will cause\\noutput of the sum of the posterior probabilities for states 0,\\n1, and 2, and/or of regions in which the Viterbi path\\ncoincides with (any of) states 0, 1, or 2 (see --viterbi)."
    reflect_strand: "(Optionally use with --hmm) Given an HMM describing the\\nforward strand, create a larger HMM that allows for features\\non both strands by \\\"reflecting\\\" the original HMM about the\\nspecified \\\"pivot\\\" states.  The new HMM will be used for\\nprediction on both strands.  States can be specified by number\\n(indexing starts with 0), or if --catmap, by category name."
    require_informative: "Require \\\"informative\\\" columns (i.e., columns with more than\\ntwo non-missing-data characters, excluding sequences specified\\nby --not-informative) in specified HMM states, to help\\neliminate false positive predictions.  States can be specified\\nby number (indexing starts with 0) or, if --catmap is used, by\\ncategory name.  Non-informative columns will be given emission\\nprobabilities of zero.  By default, this option is active,\\nwith <states> equal to the set of states of interest for\\nprediction (as specified by --states).  Use \\\"none\\\" to disable\\ncompletely."
    not_informative: "Do not consider the specified sequences (listed by name) when\\ndeciding whether a column is informative.  This option may be\\nuseful when sequences are present that are very close to the\\nreference sequence and thus do not contribute much in the way\\nof phylogenetic information.  E.g., one might use\\n\\\"--not-informative chimp\\\" with a human-referenced multiple\\nalignment including chimp sequence, to avoid false-positive\\npredictions based only on human/chimp alignments (can be a\\nproblem, e.g., with --coding-potential)."
    ignore_missing: "(For use when estimating transition probabilities) Ignore\\nregions of missing data in all sequences but the reference\\nsequence (excluding sequences specified by --not-informative)\\nwhen estimating transition probabilities.  Can help avoid\\ntoo-low estimates of <mu> and <nu> or too-high estimates of\\n<lambda>.  Warning: this option should not be used with\\n--viterbi because coordinates in output will be\\nunrecognizable."
    parameter_dot: "Also predict conserved elements as well as"
    models_dot: "Output the conservation scores but not the conserved"
    elements_dot: "phastCons mydata.ss cons.mod,noncons.mod > scores.wig"
  }
  output {
    File out_stdout = stdout()
    File out_viterbi = "${in_viterbi}"
    File out_coding_potential = "${in_coding_potential}"
  }
}