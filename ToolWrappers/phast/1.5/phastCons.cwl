class: CommandLineTool
id: phastCons.cwl
inputs:
- id: in_msa_format
  doc: "|FASTA|MPM|SS|MAF\nAlignment file format.  Default is to guess format based\
    \ on\nfile contents.  Note that the msa_view program can be used to\nconvert between\
    \ formats."
  type: File?
  inputBinding:
    prefix: --msa-format
- id: in_transitions
  doc: "[~]<mu>,<nu>\nFix the transition probabilities of the two-state HMM as\nspecified,\
    \ rather than estimating them by maximum likelihood.\nAlternatively, if first\
    \ character of argument is '~', estimate\nparameters, but initialize to specified\
    \ values.  The argument\n<mu> is the probability of transitioning from the conserved\
    \ to\nthe non-conserved state, and <nu> is the probability of the\nreverse transition.\
    \  The probabilities of self transitions are\nthus 1-<mu> and 1-<nu> and the expected\
    \ lengths of conserved\nand nonconserved elements are 1/<mu> and 1/<nu>, respectively."
  type: boolean?
  inputBinding:
    prefix: --transitions
- id: in_expected_length
  doc: "[~]<omega>  {--expected-lengths also allowed,\nfor backward compatibility}\n\
    (For use with --target-coverage, alternative to --transitions)\nSet transition\
    \ probabilities such that the expected length of\na conserved element is <omega>.\
    \  Specifically, the parameter\nmu is set to 1/<omega>.  If preceded by '~', <omega>\
    \ will be\nestimated, but will be initialized to the specified value."
  type: boolean?
  inputBinding:
    prefix: --expected-length
- id: in_target_coverage
  doc: "(Alternative to --transitions) Constrain transition parameters\nsuch that\
    \ the expected fraction of sites in conserved elements\nis <gamma> (0 < <gamma>\
    \ < 1).  This is a *prior* rather than\n*posterior* expectation and assumes stationarity\
    \ of the\nstate-transition process.  Adding this constraint causes the\nratio\
    \ mu/nu to be fixed at (1-<gamma>)/<gamma>.  If used with\n--expected-length,\
    \ the transition probabilities will be\ncompletely fixed; otherwise the expected-length\
    \ parameter\n<omega> will be estimated by maximum likelihood."
  type: long?
  inputBinding:
    prefix: --target-coverage
- id: in_ref_idx
  doc: "Use coordinate frame of specified sequence in output.  Default\nvalue is 1,\
    \ first sequence in alignment; 0 indicates\ncoordinate frame of entire multiple\
    \ alignment."
  type: long?
  inputBinding:
    prefix: --refidx
- id: in_most_conserved
  doc: (aka --viterbi) option, is a set of discrete
  type: boolean?
  inputBinding:
    prefix: --most-conserved
- id: in_rho
  doc: "Set the *scale* (overall evolutionary rate) of the model for\nthe conserved\
    \ state to be <rho> times that of the model for\nthe non-conserved state (0 <\
    \ <rho> < 1; default 0.3).  If used\nwith --estimate-trees or --estimate-rho,\
    \ the specified value\nwill be used for initialization only (rho will be\nestimated).\
    \  This option is ignored if two tree models are\ngiven."
  type: double?
  inputBinding:
    prefix: --rho
- id: in_estimate_trees
  doc: "Estimate free parameters of tree models and write new models\nto <fname_root>.cons.mod\
    \ and <fname_root>.noncons.mod."
  type: string?
  inputBinding:
    prefix: --estimate-trees
- id: in_estimate_rho
  doc: Like --estimate-trees, but estimate only the parameter rho.
  type: string?
  inputBinding:
    prefix: --estimate-rho
- id: in_gc
  doc: "(Optionally use with --estimate-trees or --estimate-rho)\nAssume a background\
    \ nucleotide distribution consistent with\nthe given average G+C content (0 <\
    \ <val> < 1) when estimating\ntree models.  (The frequencies of G and C will be\
    \ set to\n<val>/2 and the frequencies of A and T will be set to\n(1-<val>)/2.)\
    \  This option overrides the default behavior of\nestimating the background distribution\
    \ from the data (if\n--estimate-trees) or obtaining them from the input model\
    \ (if\n--estimate-rho)."
  type: long?
  inputBinding:
    prefix: --gc
- id: in_n_rates
  doc: "| <nrates_conserved,nrates_nonconserved>\n(Optionally use with a discrete-gamma\
    \ model and --estimate-trees)\nAssume the specified number of rate categories,\
    \ instead of the\nnumber given in the *.mod file.  The shape parameter 'alpha'\
    \ will\nbe as given in the *.mod file.  In the case of the default\ntwo-state\
    \ HMM, two values can be specified, for the numbers of\nrates for the conserved\
    \ and the nonconserved states, resp."
  type: long?
  inputBinding:
    prefix: --nrates
- id: in_viterbi
  doc: "[alternatively --most-conserved], -V <fname>\nPredict discrete elements using\
    \ the Viterbi algorithm and\nwrite to specified file.  Output is in BED format,\
    \ unless\n<fname> has suffix \".gff\", in which case output is in GFF."
  type: File?
  inputBinding:
    prefix: --viterbi
- id: in_score
  doc: "(Optionally use with --viterbi) Assign a log-odds score to\neach prediction."
  type: boolean?
  inputBinding:
    prefix: --score
- id: in_lnl
  doc: "Compute total log likelihood using the forward algorithm and\nwrite to specified\
    \ file."
  type: File?
  inputBinding:
    prefix: --lnl
- id: in_no_post_probs
  doc: "Suppress output of posterior probabilities.  Useful if only\ndiscrete elements\
    \ or likelihood is of interest."
  type: boolean?
  inputBinding:
    prefix: --no-post-probs
- id: in_log
  doc: "(Optionally use when estimating free parameters) Write log of\noptimization\
    \ procedure to specified file."
  type: File?
  inputBinding:
    prefix: --log
- id: in_seqname
  doc: "(Optionally use with --viterbi) Use specified string\nfor 'seqname' (GFF)\
    \ or 'chrom' field in output file.  Default\nis obtained from input file name\
    \ (double filename root, e.g.,\n\"chr22\" if input file is \"chr22.35.ss\")."
  type: File?
  inputBinding:
    prefix: --seqname
- id: in_id_pref
  doc: "(Optionally use with --viterbi) Use specified string as\nprefix of generated\
    \ ids in output file.  Can be used to ensure\nids are unique.  Default is obtained\
    \ from input file name\n(single filename root, e.g., \"chr22.35\" if input file\
    \ is\n\"chr22.35.ss\")."
  type: File?
  inputBinding:
    prefix: --idpref
- id: in_quiet
  doc: Proceed quietly (without updates to stderr).
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_indels
  doc: "Expand HMM state space to model indels as described in Siepel\n& Haussler\
    \ (2004)."
  type: boolean?
  inputBinding:
    prefix: --indels
- id: in_max_micro_in_del
  doc: "(Optionally use with --indels) Maximum length of an alignment\ngap to be considered\
    \ a \"micro-indel\" and therefore\naddressed by the indel model.  Gaps longer\
    \ than this threshold\nwill be treated as missing data.  Default value is 20."
  type: long?
  inputBinding:
    prefix: --max-micro-indel
- id: in_in_del_params
  doc: "[~]<alpha_0,beta_0,tau_0,alpha_1,beta_1,tau_1>\n(Optionally use with --indels\
    \ and default two-state HMM) Fix\nthe indel parameters at (alpha_0, beta_0, tau_0)\
    \ for the\nconserved state and at (alpha_1, beta_1, tau_1) for the\nnon-conserved\
    \ state, rather than estimating them by maximum\nlikelihood.  Alternatively, if\
    \ first character of argument is\n'~', estimate parameters, but initialize with\
    \ specified\nvalues.  Alpha_j is the rate of insertion events per\nsubstitution\
    \ per site in state j (typically ~0.05), beta_j is\nthe rate of deletion events\
    \ per substitution per site in state\nj (typically ~0.05), and tau_j is approximately\
    \ the inverse\nof the expected indel length in state j (typically 0.2-0.5)."
  type: boolean?
  inputBinding:
    prefix: --indel-params
- id: in_indels_only
  doc: "Like --indels but force the use of a single-state HMM.  This\noption allows\
    \ the effect of the indel model in isolation to be\nobserved.  Implies --no-post-probs.\
    \  Use with --lnl."
  type: boolean?
  inputBinding:
    prefix: --indels-only
- id: in_fc
  doc: "(Alternative to --hmm; specify only one *.mod file with this\noption) Use\
    \ an HMM with a state for every rate\ncategory in the given phylogenetic model,\
    \ and transition\nprobabilities defined by an autocorrelation parameter lambda\n\
    (as described by Felsenstein and Churchill, 1996).  A rate\nconstant for each\
    \ state (rate category) will be multiplied by\nthe branch lengths of the phylogenetic\
    \ model, to create a\n\"scaled\" version of the model for that state.  If the\n\
    phylogenetic model was estimated using Yang's discrete gamma\nmethod (-k option\
    \ to phyloFit), then the rate constants will\nbe defined according to the estimated\
    \ shape parameter 'alpha',\nas described by Yang (1994).  Otherwise, a nonparameteric\n\
    model of rate variation must have been used (-K option to\nphyloFit), and the\
    \ rate constants will be as defined\n(explicitly) in the *.mod file.  By default,\
    \ the parameter\nlambda will be estimated by maximum likelihood (see --lambda)."
  type: boolean?
  inputBinding:
    prefix: --FC
- id: in_lambda
  doc: "[~]<lambda>\n(Optionally use with --FC) Fix lambda at the\nspecified value\
    \ rather than estimating it by maximum\nlikelihood.  Alternatively, if first character\
    \ is '~',\nestimate but initialize at specified value.  Allowable range\nis 0-1.\
    \  With k rate categories, the transition probability\nbetween state i and state\
    \ j will be lambda * I(i == j) +\n(1-lambda)/k, where I is the indicator function.\
    \  Thus, lambda\n= 0 implies no autocorrelation and lambda = 1 implies perfect\n\
    autocorrelation."
  type: boolean?
  inputBinding:
    prefix: --lambda
- id: in_coding_potential
  doc: "Use parameter settings that cause output to be interpretable\nas a coding\
    \ potential score.  By default, a simplified version\nof exoniphy's phylo-HMM\
    \ is used, with a noncoding (background)\nstate, a conserved non-coding (CNS)\
    \ state, and states for the\nthree codon positions.  This option implies --catmap\
    \ \"NCATS=4;\nCNS 1; CDS 2-4\" --hmm <default-HMM-file> --states CDS\n--reflect-strand\
    \ background,CNS and a set of default *.mod\nfiles (all of which can be overridden).\
    \  This option can be\nused with or without --indels."
  type: File?
  inputBinding:
    prefix: --coding-potential
- id: in_extrapolate
  doc: "| default\nExtrapolate to a larger set of species based on the given\nphylogeny\
    \ (Newick-format).  The trees in the given tree models\n(*.mod files) must be\
    \ subtrees of the larger phylogeny.  For\neach tree model M, a copy will be created\
    \ of the larger\nphylogeny, then scaled such that the total branch length of\n\
    the subtree corresponding to M's tree equals the total branch\nlength of M's tree;\
    \ this new version will then be used in\nplace of M's tree.  (Any species name\
    \ present in this tree but\nnot in the data will be ignored.)  If the string \"\
    default\"\nis given instead of a filename, then a phylogeny for 25\nvertebrate\
    \ species, estimated from sequence data for Target 1\n(CFTR) of the NISC Comparative\
    \ Sequencing Program (Thomas et\nal., 2003), will be assumed."
  type: long?
  inputBinding:
    prefix: --extrapolate
- id: in_alias
  doc: "Alias names in input alignment according to given definition,\ne.g., \"hg17=human;\
    \ mm5=mouse; rn3=rat\".  Useful with default\n*.mod files, e.g., with --coding-potential.\
    \  (Default models\nuse generic common names such as \"human\", \"mouse\", and\n\
    \"rat\".  This option allows a mapping to be established\nbetween the leaves of\
    \ trees in these files and the sequences\nof an alignment that uses an alternative\
    \ naming convention.)"
  type: long?
  inputBinding:
    prefix: --alias
- id: in_hmm
  doc: "Name of HMM file explicitly defining the probabilities of all\nstate transitions.\
    \  States in the file must correspond in\nnumber and order to phylogenetic models\
    \ in <mod_fname_list>.\nExpected file format is as produced by 'hmm_train.'"
  type: long?
  inputBinding:
    prefix: --hmm
- id: in_cat_map
  doc: "|<string>\n(Optionally use with --hmm)  Mapping of feature types to category\n\
    numbers.  Can give either a filename or an \"inline\" description\nof a simple\
    \ category map, e.g., --catmap \"NCATS = 3 ; CDS 1-3\"."
  type: File?
  inputBinding:
    prefix: --catmap
- id: in_states
  doc: "States of interest in the phylo-HMM, specified by number\n(indexing starts\
    \ with 0), or if --catmap, by category name.\nDefault value is 1.  Choosing --states\
    \ \"0,1,2\" will cause\noutput of the sum of the posterior probabilities for states\
    \ 0,\n1, and 2, and/or of regions in which the Viterbi path\ncoincides with (any\
    \ of) states 0, 1, or 2 (see --viterbi)."
  type: long?
  inputBinding:
    prefix: --states
- id: in_reflect_strand
  doc: "(Optionally use with --hmm) Given an HMM describing the\nforward strand, create\
    \ a larger HMM that allows for features\non both strands by \"reflecting\" the\
    \ original HMM about the\nspecified \"pivot\" states.  The new HMM will be used\
    \ for\nprediction on both strands.  States can be specified by number\n(indexing\
    \ starts with 0), or if --catmap, by category name."
  type: long?
  inputBinding:
    prefix: --reflect-strand
- id: in_require_informative
  doc: "Require \"informative\" columns (i.e., columns with more than\ntwo non-missing-data\
    \ characters, excluding sequences specified\nby --not-informative) in specified\
    \ HMM states, to help\neliminate false positive predictions.  States can be specified\n\
    by number (indexing starts with 0) or, if --catmap is used, by\ncategory name.\
    \  Non-informative columns will be given emission\nprobabilities of zero.  By\
    \ default, this option is active,\nwith <states> equal to the set of states of\
    \ interest for\nprediction (as specified by --states).  Use \"none\" to disable\n\
    completely."
  type: long?
  inputBinding:
    prefix: --require-informative
- id: in_not_informative
  doc: "Do not consider the specified sequences (listed by name) when\ndeciding whether\
    \ a column is informative.  This option may be\nuseful when sequences are present\
    \ that are very close to the\nreference sequence and thus do not contribute much\
    \ in the way\nof phylogenetic information.  E.g., one might use\n\"--not-informative\
    \ chimp\" with a human-referenced multiple\nalignment including chimp sequence,\
    \ to avoid false-positive\npredictions based only on human/chimp alignments (can\
    \ be a\nproblem, e.g., with --coding-potential)."
  type: string?
  inputBinding:
    prefix: --not-informative
- id: in_ignore_missing
  doc: "(For use when estimating transition probabilities) Ignore\nregions of missing\
    \ data in all sequences but the reference\nsequence (excluding sequences specified\
    \ by --not-informative)\nwhen estimating transition probabilities.  Can help avoid\n\
    too-low estimates of <mu> and <nu> or too-high estimates of\n<lambda>.  Warning:\
    \ this option should not be used with\n--viterbi because coordinates in output\
    \ will be\nunrecognizable."
  type: boolean?
  inputBinding:
    prefix: --ignore-missing
- id: in_algorithm_dot
  doc: To specify them at the command line, use either the
  type: string
  inputBinding:
    position: 0
- id: in_alignment_dot
  doc: They can be suppressed with the --no-post-probs
  type: string
  inputBinding:
    position: 0
- id: in_option_dot
  doc: The secondary type of output, activated with the
  type: string
  inputBinding:
    position: 1
- id: in_here_dot
  doc: For example, it is possible to produce conservation scores
  type: string
  inputBinding:
    position: 0
- id: in_parameter_dot
  doc: Also predict conserved elements as well as
  type: string
  inputBinding:
    position: 0
- id: in_models_dot
  doc: Output the conservation scores but not the conserved
  type: string
  inputBinding:
    position: 0
- id: in_elements_dot
  doc: phastCons mydata.ss cons.mod,noncons.mod > scores.wig
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_viterbi
  doc: "[alternatively --most-conserved], -V <fname>\nPredict discrete elements using\
    \ the Viterbi algorithm and\nwrite to specified file.  Output is in BED format,\
    \ unless\n<fname> has suffix \".gff\", in which case output is in GFF."
  type: File?
  outputBinding:
    glob: $(inputs.in_viterbi)
- id: out_coding_potential
  doc: "Use parameter settings that cause output to be interpretable\nas a coding\
    \ potential score.  By default, a simplified version\nof exoniphy's phylo-HMM\
    \ is used, with a noncoding (background)\nstate, a conserved non-coding (CNS)\
    \ state, and states for the\nthree codon positions.  This option implies --catmap\
    \ \"NCATS=4;\nCNS 1; CDS 2-4\" --hmm <default-HMM-file> --states CDS\n--reflect-strand\
    \ background,CNS and a set of default *.mod\nfiles (all of which can be overridden).\
    \  This option can be\nused with or without --indels."
  type: File?
  outputBinding:
    glob: $(inputs.in_coding_potential)
hints: []
cwlVersion: v1.1
baseCommand:
- phastCons
