class: CommandLineTool
id: ../../../percolator.cwl
inputs:
- id: in_help
  doc: Display this message
  type: boolean
  inputBinding:
    prefix: --help
- id: in_var_1
  doc: ''
  type: File
  inputBinding:
    prefix: -X
- id: in_xml_output
  doc: Path to xml-output (pout) file.
  type: File
  inputBinding:
    prefix: --xmloutput
- id: in_std_input_tab
  doc: "Read percolator tab-input format\n(pin-tab) from standard input"
  type: boolean
  inputBinding:
    prefix: --stdinput-tab
- id: in_var_4
  doc: ''
  type: boolean
  inputBinding:
    prefix: -e
- id: in_std_input_xml
  doc: "Read percolator xml-input format\n(pin-xml) from standard input"
  type: boolean
  inputBinding:
    prefix: --stdinput-xml
- id: in_var_6
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Z
- id: in_decoy_xml_output
  doc: "Include decoys (PSMs, peptides\nand/or proteins) in the\nxml-output. Only\
    \ available if -X\nis set."
  type: boolean
  inputBinding:
    prefix: --decoy-xml-output
- id: in_var_8
  doc: ''
  type: string
  inputBinding:
    prefix: -p
- id: in_cpos
  doc: "Cpos, penalty for mistakes made on\npositive examples. Set by cross\nvalidation\
    \ if not specified."
  type: string
  inputBinding:
    prefix: --Cpos
- id: in_var_10
  doc: ''
  type: string
  inputBinding:
    prefix: -n
- id: in_c_neg
  doc: "Cneg, penalty for mistakes made on\nnegative examples. Set by cross\nvalidation\
    \ if not specified or if\n-p is not specified."
  type: string
  inputBinding:
    prefix: --Cneg
- id: in_var_12
  doc: ''
  type: string
  inputBinding:
    prefix: -t
- id: in_test_fdr
  doc: "False discovery rate threshold for\nevaluating best cross validation\nresult\
    \ and reported end result.\nDefault = 0.01."
  type: double
  inputBinding:
    prefix: --testFDR
- id: in_var_14
  doc: ''
  type: string
  inputBinding:
    prefix: -F
- id: in_train_fdr
  doc: "False discovery rate threshold to\ndefine positive examples in\ntraining.\
    \ Set to testFDR if 0.\nDefault = 0.01."
  type: double
  inputBinding:
    prefix: --trainFDR
- id: in_var_16
  doc: ''
  type: long
  inputBinding:
    prefix: -i
- id: in_maxiter
  doc: "Maximal number of iterations.\nDefault = 10."
  type: long
  inputBinding:
    prefix: --maxiter
- id: in_var_18
  doc: ''
  type: long
  inputBinding:
    prefix: -N
- id: in_subset_max_train
  doc: "Only train an SVM on a subset of\n<x> PSMs, and use the resulting\nscore vector\
    \ to evaluate the other\nPSMs. Recommended when analyzing\nhuge numbers (>1 million)\
    \ of PSMs.\nWhen set to 0, all PSMs are used\nfor training as normal. Default\
    \ =\n0."
  type: long
  inputBinding:
    prefix: --subset-max-train
- id: in_var_20
  doc: ''
  type: boolean
  inputBinding:
    prefix: -x
- id: in_quick_validation
  doc: "Quicker execution by reduced\ninternal cross-validation."
  type: boolean
  inputBinding:
    prefix: --quick-validation
- id: in_var_22
  doc: ''
  type: File
  inputBinding:
    prefix: -J
- id: in_tab_out
  doc: "Output computed features to given\nfile in pin-tab format."
  type: File
  inputBinding:
    prefix: --tab-out
- id: in_var_24
  doc: ''
  type: File
  inputBinding:
    prefix: -j
- id: in_tab_in
  doc: "[set by default] Input file given\nin pin-tab format. This is the\ndefault\
    \ setting, flag only present\nfor backwards compatibility."
  type: File
  inputBinding:
    prefix: --tab-in
- id: in_var_26
  doc: ''
  type: File
  inputBinding:
    prefix: -k
- id: in_xml_in
  doc: "Input file given in deprecated\npin-xml format generated by e.g.\nsqt2pin\
    \ with the -k option"
  type: File
  inputBinding:
    prefix: --xml-in
- id: in_w
  doc: ''
  type: File
  inputBinding:
    prefix: -w
- id: in_weights
  doc: Output final weights to the given
  type: File
  inputBinding:
    prefix: --weights
- id: in_in_it_weights
  doc: "Read the unnormalized initial\nweights from the third line of the\ngiven file.\
    \ This can be the output\nof the --weights option from a\nprevious Percolator\
    \ analysis. Note\nthat the weights must be in the\nsame order as the features\
    \ in the\nPSM input file(s)."
  type: File
  inputBinding:
    prefix: --init-weights
- id: in_static
  doc: "Use the provided initial weights\nas a static model. If used, the\n--init-weights\
    \ option must be\nspecified."
  type: boolean
  inputBinding:
    prefix: --static
- id: in_featurename
  doc: <[-]?featureName>
  type: boolean
  inputBinding:
    prefix: -V
- id: in_default_direction
  doc: "<[-]?featureName>        Use given feature name as initial\nsearch direction,\
    \ can be negated\nto indicate that a lower value is\nbetter."
  type: boolean
  inputBinding:
    prefix: --default-direction
- id: in_var_34
  doc: ''
  type: string
  inputBinding:
    prefix: -v
- id: in_verbose
  doc: "Set verbosity of output: 0=no\nprocessing info, 5=all. Default =\n2"
  type: long
  inputBinding:
    prefix: --verbose
- id: in_var_36
  doc: ''
  type: boolean
  inputBinding:
    prefix: -o
- id: in_no_terminate
  doc: "Do not stop execution when\nencountering questionable SVM\ninputs or results."
  type: boolean
  inputBinding:
    prefix: --no-terminate
- id: in_var_38
  doc: ''
  type: boolean
  inputBinding:
    prefix: -u
- id: in_unit_norm
  doc: "Use unit normalization [0-1]\ninstead of standard deviation\nnormalization"
  type: boolean
  inputBinding:
    prefix: --unitnorm
- id: in_var_40
  doc: ''
  type: boolean
  inputBinding:
    prefix: -R
- id: in_test_each_iteration
  doc: "Measure performance on test set\neach iteration"
  type: boolean
  inputBinding:
    prefix: --test-each-iteration
- id: in_var_42
  doc: ''
  type: boolean
  inputBinding:
    prefix: -O
- id: in_override
  doc: "Override error check and do not\nfall back on default score vector\nin case\
    \ of suspect score vector\nfrom SVM."
  type: boolean
  inputBinding:
    prefix: --override
- id: in_var_44
  doc: ''
  type: string
  inputBinding:
    prefix: -S
- id: in_seed
  doc: "Set seed of the random number\ngenerator. Default = 1"
  type: long
  inputBinding:
    prefix: --seed
- id: in_var_46
  doc: ''
  type: boolean
  inputBinding:
    prefix: -D
- id: in_doc
  doc: "Include description of correct\nfeatures, i.e. features describing\nthe difference\
    \ between the\nobserved and predicted isoelectric\npoint, retention time and\n\
    precursor mass."
  type: boolean
  inputBinding:
    prefix: --doc
- id: in_var_48
  doc: ''
  type: boolean
  inputBinding:
    prefix: -K
- id: in_klammer
  doc: "Retention time features are\ncalculated as in Klammer et al.\nOnly available\
    \ if -D is set."
  type: boolean
  inputBinding:
    prefix: --klammer
- id: in_var_50
  doc: ''
  type: File
  inputBinding:
    prefix: -r
- id: in_results_peptides
  doc: "Output tab delimited results of\npeptides to a file instead of\nstdout (will\
    \ be ignored if used\nwith -U option)"
  type: File
  inputBinding:
    prefix: --results-peptides
- id: in_var_52
  doc: ''
  type: File
  inputBinding:
    prefix: -B
- id: in_decoy_results_peptides
  doc: "Output tab delimited results for\ndecoy peptides into a file (will\nbe ignored\
    \ if used with -U option)"
  type: File
  inputBinding:
    prefix: --decoy-results-peptides
- id: in_var_54
  doc: ''
  type: File
  inputBinding:
    prefix: -m
- id: in_results_psms
  doc: "Output tab delimited results of\nPSMs to a file instead of stdout"
  type: File
  inputBinding:
    prefix: --results-psms
- id: in_var_56
  doc: ''
  type: File
  inputBinding:
    prefix: -M
- id: in_decoy_results_psms
  doc: "Output tab delimited results for\ndecoy PSMs into a file"
  type: File
  inputBinding:
    prefix: --decoy-results-psms
- id: in_var_58
  doc: ''
  type: boolean
  inputBinding:
    prefix: -U
- id: in_only_psms
  doc: "Report results only at the PSM\nlevel. This flag causes Percolator\nto skip\
    \ the step that selects the\ntop-scoring PSM per peptide;\nhence, peptide-level\
    \ results are\nleft out and only PSM-level\nresults are reported."
  type: boolean
  inputBinding:
    prefix: --only-psms
- id: in_var_60
  doc: ''
  type: boolean
  inputBinding:
    prefix: -y
- id: in_post_processing_mix_max
  doc: "Use the mix-max method to assign\nq-values and PEPs. Note that this\noption\
    \ only has an effect if the\ninput PSMs are from separate\ntarget and decoy searches.\
    \ This is\nthe default setting."
  type: boolean
  inputBinding:
    prefix: --post-processing-mix-max
- id: in_var_62
  doc: ''
  type: boolean
  inputBinding:
    prefix: -Y
- id: in_post_processing_tdc
  doc: "Replace the mix-max method by\ntarget-decoy competition for\nassigning q-values\
    \ and PEPs. If\nthe input PSMs are from separate\ntarget and decoy searches,\n\
    Percolator's SVM scores will be\nused to eliminate the lower\nscoring target or\
    \ decoy PSM(s) of\neach scan+expMass combination. If\nthe input PSMs are detected\
    \ to be\ncoming from a concatenated search,\nthis option will be turned on\nautomatically,\
    \ as this is\nincompatible with the mix-max\nmethod. In case this detection\n\
    fails, turn this option on\nexplicitly."
  type: boolean
  inputBinding:
    prefix: --post-processing-tdc
- id: in_var_64
  doc: ''
  type: string
  inputBinding:
    prefix: -I
- id: in_search_input
  doc: "Specify the type of target-decoy\nsearch: \"auto\" (Percolator\nattempts to\
    \ detect the search type\nautomatically), \"concatenated\"\n(single search on\
    \ concatenated\ntarget-decoy protein db) or\n\"separate\" (two searches, one\n\
    against target and one against\ndecoy protein db). Default =\n\"auto\"."
  type: string
  inputBinding:
    prefix: --search-input
- id: in_var_66
  doc: ''
  type: boolean
  inputBinding:
    prefix: -s
- id: in_no_schema_validation
  doc: "Skip validation of input file\nagainst xml schema."
  type: boolean
  inputBinding:
    prefix: --no-schema-validation
- id: in_var_68
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_picked_protein
  doc: "Use the picked protein-level FDR\nto infer protein probabilities.\nProvide\
    \ the fasta file as the\nargument to this flag, which will\nbe used for protein\
    \ grouping based\non an in-silico digest. If no\nfasta file is available or protein\n\
    grouping is not desired, set this\nflag to \"auto\" to skip protein\ngrouping."
  type: File
  inputBinding:
    prefix: --picked-protein
- id: in_var_70
  doc: ''
  type: boolean
  inputBinding:
    prefix: -A
- id: in_fido_protein
  doc: "Use the Fido algorithm to infer\nprotein probabilities"
  type: boolean
  inputBinding:
    prefix: --fido-protein
- id: in_var_72
  doc: ''
  type: File
  inputBinding:
    prefix: -l
- id: in_results_proteins
  doc: "Output tab delimited results of\nproteins to a file instead of\nstdout (Only\
    \ valid if option -A or\n-f is active)"
  type: File
  inputBinding:
    prefix: --results-proteins
- id: in_var_74
  doc: ''
  type: File
  inputBinding:
    prefix: -L
- id: in_decoy_results_proteins
  doc: "Output tab delimited results for\ndecoy proteins into a file (Only\nvalid\
    \ if option -A or -f is\nactive)"
  type: File
  inputBinding:
    prefix: --decoy-results-proteins
- id: in_var_76
  doc: ''
  type: string
  inputBinding:
    prefix: -P
- id: in_protein_decoy_pattern
  doc: "Define the text pattern to\nidentify decoy proteins in the\ndatabase for the\
    \ picked-protein\nalgorithm. This will have no\neffect on the target/decoy labels\n\
    specified in the input file.\nDefault = \"random_\"."
  type: File
  inputBinding:
    prefix: --protein-decoy-pattern
- id: in_var_78
  doc: ''
  type: boolean
  inputBinding:
    prefix: -z
- id: in_protein_enzyme
  doc: "Type of enzyme used for in silico\nprotein digestion for picked\nprotein-level\
    \ FDR estimation. One\nof\n\"no_enzyme\",\"elastase\",\"pepsin\",\"p\nroteinasek\"\
    ,\"thermolysin\",\"trypsin\np\",\"chymotrypsin\",\"lys-n\",\"lys-c\",\n\"arg-c\"\
    ,\"asp-n\",\"glu-c\",\"trypsin\".\nDefault=\"trypsin\"."
  type: boolean
  inputBinding:
    prefix: --protein-enzyme
- id: in_var_80
  doc: ''
  type: boolean
  inputBinding:
    prefix: -c
- id: in_protein_report_fragments
  doc: "By default, if the peptides\nassociated with protein A are a\nproper subset\
    \ of the peptides\nassociated with protein B, then\nprotein A is eliminated and\
    \ all\nthe peptides are considered as\nevidence for protein B. Note that\nthis\
    \ filtering is done based on\nthe complete set of peptides in\nthe database, not\
    \ based on the\nidentified peptides in the search\nresults. Alternatively, if\
    \ this\noption is set and if all of the\nidentified peptides associated\nwith\
    \ protein B are also associated\nwith protein A, then Percolator\nwill report\
    \ a comma-separated list\nof protein IDs, where the\nfull-length protein B is\
    \ first in\nthe list and the fragment protein\nA is listed second. Commas inside\n\
    protein IDs will be replaced by\nsemicolons. Not available for\nFido."
  type: boolean
  inputBinding:
    prefix: --protein-report-fragments
- id: in_var_82
  doc: ''
  type: boolean
  inputBinding:
    prefix: -g
- id: in_protein_report_duplicates
  doc: "If this option is set and multiple\ndatabase proteins contain exactly\nthe\
    \ same set of peptides, then the\nIDs of these duplicated proteins\nwill be reported\
    \ as a\ncomma-separated list, instead of\nthe default behavior of randomly\ndiscarding\
    \ all but one of the\nproteins. Commas inside protein\nIDs will be replaced by\n\
    semicolons. Not available for\nFido."
  type: boolean
  inputBinding:
    prefix: --protein-report-duplicates
- id: in_var_84
  doc: ''
  type: string
  inputBinding:
    prefix: -a
- id: in_fido_alpha
  doc: "Set Fido's probability with which\na present protein emits an\nassociated\
    \ peptide.        Set by\ngrid search if not specified."
  type: string
  inputBinding:
    prefix: --fido-alpha
- id: in_var_86
  doc: ''
  type: string
  inputBinding:
    prefix: -b
- id: in_fido_beta
  doc: "Set Fido's probability of creation\nof a peptide from noise. Set by\ngrid\
    \ search if not specified."
  type: string
  inputBinding:
    prefix: --fido-beta
- id: in_var_88
  doc: ''
  type: string
  inputBinding:
    prefix: -G
- id: in_fido_gamma
  doc: "Set Fido's prior probability that\na protein is present in the\nsample. Set\
    \ by grid search if not\nspecified."
  type: string
  inputBinding:
    prefix: --fido-gamma
- id: in_q
  doc: ''
  type: boolean
  inputBinding:
    prefix: -q
- id: in_fido_empirical_protein_q
  doc: "Output empirical p-values and\nq-values for Fido using\ntarget-decoy analysis\
    \ to XML\noutput (only valid if -X flag is\npresent)."
  type: boolean
  inputBinding:
    prefix: --fido-empirical-protein-q
- id: in_var_92
  doc: ''
  type: string
  inputBinding:
    prefix: -d
- id: in_fido_grid_search_depth
  doc: "Setting the gridsearch-depth to 0\n(fastest), 1 or 2 (slowest)\ncontrols how\
    \ much computational\ntime is required for the\nestimation of alpha, beta and\n\
    gamma parameters for Fido. Default\n= 0."
  type: long
  inputBinding:
    prefix: --fido-gridsearch-depth
- id: in_var_94
  doc: ''
  type: string
  inputBinding:
    prefix: -T
- id: in_fido_fast_grid_search
  doc: "Apply the specified threshold to\nPSM, peptide and protein\nprobabilities\
    \ to obtain a faster\nestimate of the alpha, beta and\ngamma parameters. Default\
    \ = 0;\nRecommended when set = 0.2."
  type: double
  inputBinding:
    prefix: --fido-fast-gridsearch
- id: in_var_96
  doc: ''
  type: boolean
  inputBinding:
    prefix: -C
- id: in_fido_no_split_large_components
  doc: "Do not approximate the posterior\ndistribution by allowing large\ngraph components\
    \ to be split into\nsubgraphs. The splitting is done\nby duplicating peptides\
    \ with low\nprobabilities. Splitting continues\nuntil the number of possible\n\
    configurations of each subgraph is\nbelow 2^18."
  type: boolean
  inputBinding:
    prefix: --fido-no-split-large-components
- id: in_var_98
  doc: ''
  type: string
  inputBinding:
    prefix: -E
- id: in_fido_protein_truncation_threshold
  doc: "To speed up inference, proteins\nfor which none of the associated\npeptides\
    \ has a probability\nexceeding the specified threshold\nwill be assigned probability\
    \ = 0.\nDefault = 0.01."
  type: double
  inputBinding:
    prefix: --fido-protein-truncation-threshold
- id: in_h
  doc: ''
  type: string
  inputBinding:
    prefix: -H
- id: in_fido_grid_search_mse_threshold
  doc: "Q-value threshold that will be\nused in the computation of the MSE\nand ROC\
    \ AUC score in the grid\nsearch. Recommended 0.05 for\nnormal size datasets and\
    \ 0.1 for\nlarge datasets. Default = 0.1"
  type: long
  inputBinding:
    prefix: --fido-gridsearch-mse-threshold
- id: in_num_threads
  doc: "Number of total parallel threads\nfor SVM training during cross\nvalidation.\
    \ Default (one thread\nper CV fold) = 3."
  type: long
  inputBinding:
    prefix: --num-threads
- id: in_nested_xval_bins
  doc: "Number of nested cross validation\nbins within each cross validation\nbin.\
    \ This should reduce\noverfitting of the\nhyperparameters. Default = 1."
  type: long
  inputBinding:
    prefix: --nested-xval-bins
- id: in_spectral_counting_fdr
  doc: "Activates spectral counting on\nprotein level (either\n--fido-protein or --picked-protein\n\
    has to be set) at the specified\nPSM q-value threshold. Adds two\ncolumns, \"\
    spec_count_unique\" and\n\"spec_count_all\", to the protein\ntab separated output,\
    \ containing\nthe spectral count for the\npeptides unique to the protein and\n\
    the spectral count including\nshared peptides respectively."
  type: string
  inputBinding:
    prefix: --spectral-counting-fdr
- id: in_train_best_positive
  doc: "Enforce that, for each spectrum,\nat most one PSM is included in the\npositive\
    \ set during each training\niteration. If the user only\nprovides one PSM per\
    \ spectrum,\nthis filter will have no effect."
  type: boolean
  inputBinding:
    prefix: --train-best-positive
- id: in_train_fdr_initial
  doc: "Set the FDR threshold for the\nfirst iteration. This is useful in\ncases where\
    \ the original features\ndo not display a good separation\nbetween targets and\
    \ decoys. In\nsubsequent iterations, the normal\n--trainFDR will be used."
  type: string
  inputBinding:
    prefix: --train-fdr-initial
- id: in_parameter_file
  doc: "Read flags from a parameter file.\nIf flags are specified on the\ncommand\
    \ line as well, these will\noverride the ones in the parameter\nfile.\n"
  type: File
  inputBinding:
    prefix: --parameter-file
- id: in_file
  doc: -W <filename>
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_xml_output
  doc: Path to xml-output (pout) file.
  type: File
  outputBinding:
    glob: $(inputs.in_xml_output)
- id: out_tab_out
  doc: "Output computed features to given\nfile in pin-tab format."
  type: File
  outputBinding:
    glob: $(inputs.in_tab_out)
- id: out_results_peptides
  doc: "Output tab delimited results of\npeptides to a file instead of\nstdout (will\
    \ be ignored if used\nwith -U option)"
  type: File
  outputBinding:
    glob: $(inputs.in_results_peptides)
- id: out_decoy_results_peptides
  doc: "Output tab delimited results for\ndecoy peptides into a file (will\nbe ignored\
    \ if used with -U option)"
  type: File
  outputBinding:
    glob: $(inputs.in_decoy_results_peptides)
- id: out_results_psms
  doc: "Output tab delimited results of\nPSMs to a file instead of stdout"
  type: File
  outputBinding:
    glob: $(inputs.in_results_psms)
- id: out_decoy_results_psms
  doc: "Output tab delimited results for\ndecoy PSMs into a file"
  type: File
  outputBinding:
    glob: $(inputs.in_decoy_results_psms)
- id: out_results_proteins
  doc: "Output tab delimited results of\nproteins to a file instead of\nstdout (Only\
    \ valid if option -A or\n-f is active)"
  type: File
  outputBinding:
    glob: $(inputs.in_results_proteins)
- id: out_decoy_results_proteins
  doc: "Output tab delimited results for\ndecoy proteins into a file (Only\nvalid\
    \ if option -A or -f is\nactive)"
  type: File
  outputBinding:
    glob: $(inputs.in_decoy_results_proteins)
cwlVersion: v1.1
baseCommand:
- percolator