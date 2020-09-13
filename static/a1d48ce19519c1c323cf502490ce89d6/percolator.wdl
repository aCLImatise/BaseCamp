version 1.0

task Percolator {
  input {
    Boolean? help
    File? var_1
    File? xml_output
    Boolean? std_input_tab
    Boolean? var_4
    Boolean? std_input_xml
    Boolean? var_6
    Boolean? decoy_xml_output
    String? var_8
    String? cpos
    String? var_10
    String? c_neg
    String? var_12
    Float? test_fdr
    String? var_14
    Float? train_fdr
    Int? var_16
    Int? maxiter
    Int? var_18
    Int? subset_max_train
    Boolean? var_20
    Boolean? quick_validation
    File? var_22
    File? tab_out
    File? var_24
    File? tab_in
    File? var_26
    File? xml_in
    File? w
    File? weights
    File? in_it_weights
    Boolean? static
    Boolean? featurename
    Boolean? default_direction
    String? var_34
    Int? verbose
    Boolean? var_36
    Boolean? no_terminate
    Boolean? var_38
    Boolean? unit_norm
    Boolean? var_40
    Boolean? test_each_iteration
    Boolean? var_42
    Boolean? override
    String? var_44
    Int? seed
    Boolean? var_46
    Boolean? doc
    Boolean? var_48
    Boolean? klammer
    File? var_50
    File? results_peptides
    File? var_52
    File? decoy_results_peptides
    File? var_54
    File? results_psms
    File? var_56
    File? decoy_results_psms
    Boolean? var_58
    Boolean? only_psms
    Boolean? var_60
    Boolean? post_processing_mix_max
    Boolean? var_62
    Boolean? post_processing_tdc
    String? var_64
    String? search_input
    Boolean? var_66
    Boolean? no_schema_validation
    String? var_68
    File? picked_protein
    Boolean? var_70
    Boolean? fido_protein
    File? var_72
    File? results_proteins
    File? var_74
    File? decoy_results_proteins
    String? var_76
    File? protein_decoy_pattern
    Boolean? var_78
    Boolean? protein_enzyme
    Boolean? var_80
    Boolean? protein_report_fragments
    Boolean? var_82
    Boolean? protein_report_duplicates
    String? var_84
    String? fido_alpha
    String? var_86
    String? fido_beta
    String? var_88
    String? fido_gamma
    Boolean? q
    Boolean? fido_empirical_protein_q
    String? var_92
    Int? fido_grid_search_depth
    String? var_94
    Float? fido_fast_grid_search
    Boolean? var_96
    Boolean? fido_no_split_large_components
    String? var_98
    Float? fido_protein_truncation_threshold
    String? h
    Int? fido_grid_search_mse_threshold
    Int? num_threads
    Int? nested_xval_bins
    String? spectral_counting_fdr
    Boolean? train_best_positive
    String? train_fdr_initial
    File? parameter_file
    File file
  }
  command <<<
    percolator \
      ~{file} \
      ~{if (help) then "--help" else ""} \
      ~{if defined(var_1) then ("-X " +  '"' + var_1 + '"') else ""} \
      ~{if defined(xml_output) then ("--xmloutput " +  '"' + xml_output + '"') else ""} \
      ~{if (std_input_tab) then "--stdinput-tab" else ""} \
      ~{if (var_4) then "-e" else ""} \
      ~{if (std_input_xml) then "--stdinput-xml" else ""} \
      ~{if (var_6) then "-Z" else ""} \
      ~{if (decoy_xml_output) then "--decoy-xml-output" else ""} \
      ~{if defined(var_8) then ("-p " +  '"' + var_8 + '"') else ""} \
      ~{if defined(cpos) then ("--Cpos " +  '"' + cpos + '"') else ""} \
      ~{if defined(var_10) then ("-n " +  '"' + var_10 + '"') else ""} \
      ~{if defined(c_neg) then ("--Cneg " +  '"' + c_neg + '"') else ""} \
      ~{if defined(var_12) then ("-t " +  '"' + var_12 + '"') else ""} \
      ~{if defined(test_fdr) then ("--testFDR " +  '"' + test_fdr + '"') else ""} \
      ~{if defined(var_14) then ("-F " +  '"' + var_14 + '"') else ""} \
      ~{if defined(train_fdr) then ("--trainFDR " +  '"' + train_fdr + '"') else ""} \
      ~{if defined(var_16) then ("-i " +  '"' + var_16 + '"') else ""} \
      ~{if defined(maxiter) then ("--maxiter " +  '"' + maxiter + '"') else ""} \
      ~{if defined(var_18) then ("-N " +  '"' + var_18 + '"') else ""} \
      ~{if defined(subset_max_train) then ("--subset-max-train " +  '"' + subset_max_train + '"') else ""} \
      ~{if (var_20) then "-x" else ""} \
      ~{if (quick_validation) then "--quick-validation" else ""} \
      ~{if defined(var_22) then ("-J " +  '"' + var_22 + '"') else ""} \
      ~{if defined(tab_out) then ("--tab-out " +  '"' + tab_out + '"') else ""} \
      ~{if defined(var_24) then ("-j " +  '"' + var_24 + '"') else ""} \
      ~{if defined(tab_in) then ("--tab-in " +  '"' + tab_in + '"') else ""} \
      ~{if defined(var_26) then ("-k " +  '"' + var_26 + '"') else ""} \
      ~{if defined(xml_in) then ("--xml-in " +  '"' + xml_in + '"') else ""} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{if defined(weights) then ("--weights " +  '"' + weights + '"') else ""} \
      ~{if defined(in_it_weights) then ("--init-weights " +  '"' + in_it_weights + '"') else ""} \
      ~{if (static) then "--static" else ""} \
      ~{if (featurename) then "-V" else ""} \
      ~{if (default_direction) then "--default-direction" else ""} \
      ~{if defined(var_34) then ("-v " +  '"' + var_34 + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (var_36) then "-o" else ""} \
      ~{if (no_terminate) then "--no-terminate" else ""} \
      ~{if (var_38) then "-u" else ""} \
      ~{if (unit_norm) then "--unitnorm" else ""} \
      ~{if (var_40) then "-R" else ""} \
      ~{if (test_each_iteration) then "--test-each-iteration" else ""} \
      ~{if (var_42) then "-O" else ""} \
      ~{if (override) then "--override" else ""} \
      ~{if defined(var_44) then ("-S " +  '"' + var_44 + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (var_46) then "-D" else ""} \
      ~{if (doc) then "--doc" else ""} \
      ~{if (var_48) then "-K" else ""} \
      ~{if (klammer) then "--klammer" else ""} \
      ~{if defined(var_50) then ("-r " +  '"' + var_50 + '"') else ""} \
      ~{if defined(results_peptides) then ("--results-peptides " +  '"' + results_peptides + '"') else ""} \
      ~{if defined(var_52) then ("-B " +  '"' + var_52 + '"') else ""} \
      ~{if defined(decoy_results_peptides) then ("--decoy-results-peptides " +  '"' + decoy_results_peptides + '"') else ""} \
      ~{if defined(var_54) then ("-m " +  '"' + var_54 + '"') else ""} \
      ~{if defined(results_psms) then ("--results-psms " +  '"' + results_psms + '"') else ""} \
      ~{if defined(var_56) then ("-M " +  '"' + var_56 + '"') else ""} \
      ~{if defined(decoy_results_psms) then ("--decoy-results-psms " +  '"' + decoy_results_psms + '"') else ""} \
      ~{if (var_58) then "-U" else ""} \
      ~{if (only_psms) then "--only-psms" else ""} \
      ~{if (var_60) then "-y" else ""} \
      ~{if (post_processing_mix_max) then "--post-processing-mix-max" else ""} \
      ~{if (var_62) then "-Y" else ""} \
      ~{if (post_processing_tdc) then "--post-processing-tdc" else ""} \
      ~{if defined(var_64) then ("-I " +  '"' + var_64 + '"') else ""} \
      ~{if defined(search_input) then ("--search-input " +  '"' + search_input + '"') else ""} \
      ~{if (var_66) then "-s" else ""} \
      ~{if (no_schema_validation) then "--no-schema-validation" else ""} \
      ~{if defined(var_68) then ("-f " +  '"' + var_68 + '"') else ""} \
      ~{if defined(picked_protein) then ("--picked-protein " +  '"' + picked_protein + '"') else ""} \
      ~{if (var_70) then "-A" else ""} \
      ~{if (fido_protein) then "--fido-protein" else ""} \
      ~{if defined(var_72) then ("-l " +  '"' + var_72 + '"') else ""} \
      ~{if defined(results_proteins) then ("--results-proteins " +  '"' + results_proteins + '"') else ""} \
      ~{if defined(var_74) then ("-L " +  '"' + var_74 + '"') else ""} \
      ~{if defined(decoy_results_proteins) then ("--decoy-results-proteins " +  '"' + decoy_results_proteins + '"') else ""} \
      ~{if defined(var_76) then ("-P " +  '"' + var_76 + '"') else ""} \
      ~{if defined(protein_decoy_pattern) then ("--protein-decoy-pattern " +  '"' + protein_decoy_pattern + '"') else ""} \
      ~{if (var_78) then "-z" else ""} \
      ~{if (protein_enzyme) then "--protein-enzyme" else ""} \
      ~{if (var_80) then "-c" else ""} \
      ~{if (protein_report_fragments) then "--protein-report-fragments" else ""} \
      ~{if (var_82) then "-g" else ""} \
      ~{if (protein_report_duplicates) then "--protein-report-duplicates" else ""} \
      ~{if defined(var_84) then ("-a " +  '"' + var_84 + '"') else ""} \
      ~{if defined(fido_alpha) then ("--fido-alpha " +  '"' + fido_alpha + '"') else ""} \
      ~{if defined(var_86) then ("-b " +  '"' + var_86 + '"') else ""} \
      ~{if defined(fido_beta) then ("--fido-beta " +  '"' + fido_beta + '"') else ""} \
      ~{if defined(var_88) then ("-G " +  '"' + var_88 + '"') else ""} \
      ~{if defined(fido_gamma) then ("--fido-gamma " +  '"' + fido_gamma + '"') else ""} \
      ~{if (q) then "-q" else ""} \
      ~{if (fido_empirical_protein_q) then "--fido-empirical-protein-q" else ""} \
      ~{if defined(var_92) then ("-d " +  '"' + var_92 + '"') else ""} \
      ~{if defined(fido_grid_search_depth) then ("--fido-gridsearch-depth " +  '"' + fido_grid_search_depth + '"') else ""} \
      ~{if defined(var_94) then ("-T " +  '"' + var_94 + '"') else ""} \
      ~{if defined(fido_fast_grid_search) then ("--fido-fast-gridsearch " +  '"' + fido_fast_grid_search + '"') else ""} \
      ~{if (var_96) then "-C" else ""} \
      ~{if (fido_no_split_large_components) then "--fido-no-split-large-components" else ""} \
      ~{if defined(var_98) then ("-E " +  '"' + var_98 + '"') else ""} \
      ~{if defined(fido_protein_truncation_threshold) then ("--fido-protein-truncation-threshold " +  '"' + fido_protein_truncation_threshold + '"') else ""} \
      ~{if defined(h) then ("-H " +  '"' + h + '"') else ""} \
      ~{if defined(fido_grid_search_mse_threshold) then ("--fido-gridsearch-mse-threshold " +  '"' + fido_grid_search_mse_threshold + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(nested_xval_bins) then ("--nested-xval-bins " +  '"' + nested_xval_bins + '"') else ""} \
      ~{if defined(spectral_counting_fdr) then ("--spectral-counting-fdr " +  '"' + spectral_counting_fdr + '"') else ""} \
      ~{if (train_best_positive) then "--train-best-positive" else ""} \
      ~{if defined(train_fdr_initial) then ("--train-fdr-initial " +  '"' + train_fdr_initial + '"') else ""} \
      ~{if defined(parameter_file) then ("--parameter-file " +  '"' + parameter_file + '"') else ""}
  >>>
  parameter_meta {
    help: "Display this message"
    var_1: ""
    xml_output: "Path to xml-output (pout) file."
    std_input_tab: "Read percolator tab-input format\\n(pin-tab) from standard input"
    var_4: ""
    std_input_xml: "Read percolator xml-input format\\n(pin-xml) from standard input"
    var_6: ""
    decoy_xml_output: "Include decoys (PSMs, peptides\\nand/or proteins) in the\\nxml-output. Only available if -X\\nis set."
    var_8: ""
    cpos: "Cpos, penalty for mistakes made on\\npositive examples. Set by cross\\nvalidation if not specified."
    var_10: ""
    c_neg: "Cneg, penalty for mistakes made on\\nnegative examples. Set by cross\\nvalidation if not specified or if\\n-p is not specified."
    var_12: ""
    test_fdr: "False discovery rate threshold for\\nevaluating best cross validation\\nresult and reported end result.\\nDefault = 0.01."
    var_14: ""
    train_fdr: "False discovery rate threshold to\\ndefine positive examples in\\ntraining. Set to testFDR if 0.\\nDefault = 0.01."
    var_16: ""
    maxiter: "Maximal number of iterations.\\nDefault = 10."
    var_18: ""
    subset_max_train: "Only train an SVM on a subset of\\n<x> PSMs, and use the resulting\\nscore vector to evaluate the other\\nPSMs. Recommended when analyzing\\nhuge numbers (>1 million) of PSMs.\\nWhen set to 0, all PSMs are used\\nfor training as normal. Default =\\n0."
    var_20: ""
    quick_validation: "Quicker execution by reduced\\ninternal cross-validation."
    var_22: ""
    tab_out: "Output computed features to given\\nfile in pin-tab format."
    var_24: ""
    tab_in: "[set by default] Input file given\\nin pin-tab format. This is the\\ndefault setting, flag only present\\nfor backwards compatibility."
    var_26: ""
    xml_in: "Input file given in deprecated\\npin-xml format generated by e.g.\\nsqt2pin with the -k option"
    w: ""
    weights: "Output final weights to the given"
    in_it_weights: "Read the unnormalized initial\\nweights from the third line of the\\ngiven file. This can be the output\\nof the --weights option from a\\nprevious Percolator analysis. Note\\nthat the weights must be in the\\nsame order as the features in the\\nPSM input file(s)."
    static: "Use the provided initial weights\\nas a static model. If used, the\\n--init-weights option must be\\nspecified."
    featurename: "<[-]?featureName>"
    default_direction: "<[-]?featureName>        Use given feature name as initial\\nsearch direction, can be negated\\nto indicate that a lower value is\\nbetter."
    var_34: ""
    verbose: "Set verbosity of output: 0=no\\nprocessing info, 5=all. Default =\\n2"
    var_36: ""
    no_terminate: "Do not stop execution when\\nencountering questionable SVM\\ninputs or results."
    var_38: ""
    unit_norm: "Use unit normalization [0-1]\\ninstead of standard deviation\\nnormalization"
    var_40: ""
    test_each_iteration: "Measure performance on test set\\neach iteration"
    var_42: ""
    override: "Override error check and do not\\nfall back on default score vector\\nin case of suspect score vector\\nfrom SVM."
    var_44: ""
    seed: "Set seed of the random number\\ngenerator. Default = 1"
    var_46: ""
    doc: "Include description of correct\\nfeatures, i.e. features describing\\nthe difference between the\\nobserved and predicted isoelectric\\npoint, retention time and\\nprecursor mass."
    var_48: ""
    klammer: "Retention time features are\\ncalculated as in Klammer et al.\\nOnly available if -D is set."
    var_50: ""
    results_peptides: "Output tab delimited results of\\npeptides to a file instead of\\nstdout (will be ignored if used\\nwith -U option)"
    var_52: ""
    decoy_results_peptides: "Output tab delimited results for\\ndecoy peptides into a file (will\\nbe ignored if used with -U option)"
    var_54: ""
    results_psms: "Output tab delimited results of\\nPSMs to a file instead of stdout"
    var_56: ""
    decoy_results_psms: "Output tab delimited results for\\ndecoy PSMs into a file"
    var_58: ""
    only_psms: "Report results only at the PSM\\nlevel. This flag causes Percolator\\nto skip the step that selects the\\ntop-scoring PSM per peptide;\\nhence, peptide-level results are\\nleft out and only PSM-level\\nresults are reported."
    var_60: ""
    post_processing_mix_max: "Use the mix-max method to assign\\nq-values and PEPs. Note that this\\noption only has an effect if the\\ninput PSMs are from separate\\ntarget and decoy searches. This is\\nthe default setting."
    var_62: ""
    post_processing_tdc: "Replace the mix-max method by\\ntarget-decoy competition for\\nassigning q-values and PEPs. If\\nthe input PSMs are from separate\\ntarget and decoy searches,\\nPercolator's SVM scores will be\\nused to eliminate the lower\\nscoring target or decoy PSM(s) of\\neach scan+expMass combination. If\\nthe input PSMs are detected to be\\ncoming from a concatenated search,\\nthis option will be turned on\\nautomatically, as this is\\nincompatible with the mix-max\\nmethod. In case this detection\\nfails, turn this option on\\nexplicitly."
    var_64: ""
    search_input: "Specify the type of target-decoy\\nsearch: \\\"auto\\\" (Percolator\\nattempts to detect the search type\\nautomatically), \\\"concatenated\\\"\\n(single search on concatenated\\ntarget-decoy protein db) or\\n\\\"separate\\\" (two searches, one\\nagainst target and one against\\ndecoy protein db). Default =\\n\\\"auto\\\"."
    var_66: ""
    no_schema_validation: "Skip validation of input file\\nagainst xml schema."
    var_68: ""
    picked_protein: "Use the picked protein-level FDR\\nto infer protein probabilities.\\nProvide the fasta file as the\\nargument to this flag, which will\\nbe used for protein grouping based\\non an in-silico digest. If no\\nfasta file is available or protein\\ngrouping is not desired, set this\\nflag to \\\"auto\\\" to skip protein\\ngrouping."
    var_70: ""
    fido_protein: "Use the Fido algorithm to infer\\nprotein probabilities"
    var_72: ""
    results_proteins: "Output tab delimited results of\\nproteins to a file instead of\\nstdout (Only valid if option -A or\\n-f is active)"
    var_74: ""
    decoy_results_proteins: "Output tab delimited results for\\ndecoy proteins into a file (Only\\nvalid if option -A or -f is\\nactive)"
    var_76: ""
    protein_decoy_pattern: "Define the text pattern to\\nidentify decoy proteins in the\\ndatabase for the picked-protein\\nalgorithm. This will have no\\neffect on the target/decoy labels\\nspecified in the input file.\\nDefault = \\\"random_\\\"."
    var_78: ""
    protein_enzyme: "Type of enzyme used for in silico\\nprotein digestion for picked\\nprotein-level FDR estimation. One\\nof\\n\\\"no_enzyme\\\",\\\"elastase\\\",\\\"pepsin\\\",\\\"p\\nroteinasek\\\",\\\"thermolysin\\\",\\\"trypsin\\np\\\",\\\"chymotrypsin\\\",\\\"lys-n\\\",\\\"lys-c\\\",\\n\\\"arg-c\\\",\\\"asp-n\\\",\\\"glu-c\\\",\\\"trypsin\\\".\\nDefault=\\\"trypsin\\\"."
    var_80: ""
    protein_report_fragments: "By default, if the peptides\\nassociated with protein A are a\\nproper subset of the peptides\\nassociated with protein B, then\\nprotein A is eliminated and all\\nthe peptides are considered as\\nevidence for protein B. Note that\\nthis filtering is done based on\\nthe complete set of peptides in\\nthe database, not based on the\\nidentified peptides in the search\\nresults. Alternatively, if this\\noption is set and if all of the\\nidentified peptides associated\\nwith protein B are also associated\\nwith protein A, then Percolator\\nwill report a comma-separated list\\nof protein IDs, where the\\nfull-length protein B is first in\\nthe list and the fragment protein\\nA is listed second. Commas inside\\nprotein IDs will be replaced by\\nsemicolons. Not available for\\nFido."
    var_82: ""
    protein_report_duplicates: "If this option is set and multiple\\ndatabase proteins contain exactly\\nthe same set of peptides, then the\\nIDs of these duplicated proteins\\nwill be reported as a\\ncomma-separated list, instead of\\nthe default behavior of randomly\\ndiscarding all but one of the\\nproteins. Commas inside protein\\nIDs will be replaced by\\nsemicolons. Not available for\\nFido."
    var_84: ""
    fido_alpha: "Set Fido's probability with which\\na present protein emits an\\nassociated peptide.        Set by\\ngrid search if not specified."
    var_86: ""
    fido_beta: "Set Fido's probability of creation\\nof a peptide from noise. Set by\\ngrid search if not specified."
    var_88: ""
    fido_gamma: "Set Fido's prior probability that\\na protein is present in the\\nsample. Set by grid search if not\\nspecified."
    q: ""
    fido_empirical_protein_q: "Output empirical p-values and\\nq-values for Fido using\\ntarget-decoy analysis to XML\\noutput (only valid if -X flag is\\npresent)."
    var_92: ""
    fido_grid_search_depth: "Setting the gridsearch-depth to 0\\n(fastest), 1 or 2 (slowest)\\ncontrols how much computational\\ntime is required for the\\nestimation of alpha, beta and\\ngamma parameters for Fido. Default\\n= 0."
    var_94: ""
    fido_fast_grid_search: "Apply the specified threshold to\\nPSM, peptide and protein\\nprobabilities to obtain a faster\\nestimate of the alpha, beta and\\ngamma parameters. Default = 0;\\nRecommended when set = 0.2."
    var_96: ""
    fido_no_split_large_components: "Do not approximate the posterior\\ndistribution by allowing large\\ngraph components to be split into\\nsubgraphs. The splitting is done\\nby duplicating peptides with low\\nprobabilities. Splitting continues\\nuntil the number of possible\\nconfigurations of each subgraph is\\nbelow 2^18."
    var_98: ""
    fido_protein_truncation_threshold: "To speed up inference, proteins\\nfor which none of the associated\\npeptides has a probability\\nexceeding the specified threshold\\nwill be assigned probability = 0.\\nDefault = 0.01."
    h: ""
    fido_grid_search_mse_threshold: "Q-value threshold that will be\\nused in the computation of the MSE\\nand ROC AUC score in the grid\\nsearch. Recommended 0.05 for\\nnormal size datasets and 0.1 for\\nlarge datasets. Default = 0.1"
    num_threads: "Number of total parallel threads\\nfor SVM training during cross\\nvalidation. Default (one thread\\nper CV fold) = 3."
    nested_xval_bins: "Number of nested cross validation\\nbins within each cross validation\\nbin. This should reduce\\noverfitting of the\\nhyperparameters. Default = 1."
    spectral_counting_fdr: "Activates spectral counting on\\nprotein level (either\\n--fido-protein or --picked-protein\\nhas to be set) at the specified\\nPSM q-value threshold. Adds two\\ncolumns, \\\"spec_count_unique\\\" and\\n\\\"spec_count_all\\\", to the protein\\ntab separated output, containing\\nthe spectral count for the\\npeptides unique to the protein and\\nthe spectral count including\\nshared peptides respectively."
    train_best_positive: "Enforce that, for each spectrum,\\nat most one PSM is included in the\\npositive set during each training\\niteration. If the user only\\nprovides one PSM per spectrum,\\nthis filter will have no effect."
    train_fdr_initial: "Set the FDR threshold for the\\nfirst iteration. This is useful in\\ncases where the original features\\ndo not display a good separation\\nbetween targets and decoys. In\\nsubsequent iterations, the normal\\n--trainFDR will be used."
    parameter_file: "Read flags from a parameter file.\\nIf flags are specified on the\\ncommand line as well, these will\\noverride the ones in the parameter\\nfile.\\n"
    file: "-W <filename>"
  }
  output {
    File out_stdout = stdout()
    File out_xml_output = "${in_xml_output}"
    File out_tab_out = "${in_tab_out}"
    File out_results_peptides = "${in_results_peptides}"
    File out_decoy_results_peptides = "${in_decoy_results_peptides}"
    File out_results_psms = "${in_results_psms}"
    File out_decoy_results_psms = "${in_decoy_results_psms}"
    File out_results_proteins = "${in_results_proteins}"
    File out_decoy_results_proteins = "${in_decoy_results_proteins}"
  }
}