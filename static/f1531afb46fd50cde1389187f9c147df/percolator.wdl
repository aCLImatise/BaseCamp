version 1.0

task Percolator {
  input {
    File? xml_output
    Boolean? std_input_tab
    Boolean? std_input_xml
    Boolean? decoy_xml_output
    String? cpos
    String? c_neg
    Float? test_fdr
    Float? train_fdr
    Int? maxiter
    Int? subset_max_train
    Boolean? quick_validation
    File? tab_out
    File? tab_in
    File? xml_in
    File? weights
    File? in_it_weights
    Boolean? static
    Boolean? default_direction
    Int? verbose
    Boolean? no_terminate
    Boolean? unit_norm
    Boolean? test_each_iteration
    Boolean? override
    Int? seed
    Boolean? doc
    Boolean? klammer
    File? results_peptides
    File? decoy_results_peptides
    File? results_psms
    File? decoy_results_psms
    Boolean? only_psms
    Boolean? post_processing_mix_max
    Boolean? post_processing_tdc
    String? search_input
    Boolean? no_schema_validation
    File? picked_protein
    Boolean? fido_protein
    File? results_proteins
    File? decoy_results_proteins
    File? protein_decoy_pattern
    Boolean? protein_enzyme
    Boolean? protein_report_fragments
    Boolean? protein_report_duplicates
    String? fido_alpha
    String? fido_beta
    String? fido_gamma
    Boolean? fido_empirical_protein_q
    Int? fido_grid_search_depth
    Float? fido_fast_grid_search
    Boolean? fido_no_split_large_components
    Float? fido_protein_truncation_threshold
    Int? fido_grid_search_mse_threshold
    Int? num_threads
    Int? nested_xval_bins
    String? spectral_counting_fdr
    Boolean? train_best_positive
    String? train_fdr_initial
    File? parameter_file
    File w_filename
  }
  command <<<
    percolator \
      ~{w_filename} \
      ~{if defined(xml_output) then ("--xmloutput " +  '"' + xml_output + '"') else ""} \
      ~{if (std_input_tab) then "--stdinput-tab" else ""} \
      ~{if (std_input_xml) then "--stdinput-xml" else ""} \
      ~{if (decoy_xml_output) then "--decoy-xml-output" else ""} \
      ~{if defined(cpos) then ("--Cpos " +  '"' + cpos + '"') else ""} \
      ~{if defined(c_neg) then ("--Cneg " +  '"' + c_neg + '"') else ""} \
      ~{if defined(test_fdr) then ("--testFDR " +  '"' + test_fdr + '"') else ""} \
      ~{if defined(train_fdr) then ("--trainFDR " +  '"' + train_fdr + '"') else ""} \
      ~{if defined(maxiter) then ("--maxiter " +  '"' + maxiter + '"') else ""} \
      ~{if defined(subset_max_train) then ("--subset-max-train " +  '"' + subset_max_train + '"') else ""} \
      ~{if (quick_validation) then "--quick-validation" else ""} \
      ~{if defined(tab_out) then ("--tab-out " +  '"' + tab_out + '"') else ""} \
      ~{if defined(tab_in) then ("--tab-in " +  '"' + tab_in + '"') else ""} \
      ~{if defined(xml_in) then ("--xml-in " +  '"' + xml_in + '"') else ""} \
      ~{if defined(weights) then ("--weights " +  '"' + weights + '"') else ""} \
      ~{if defined(in_it_weights) then ("--init-weights " +  '"' + in_it_weights + '"') else ""} \
      ~{if (static) then "--static" else ""} \
      ~{if (default_direction) then "--default-direction" else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (no_terminate) then "--no-terminate" else ""} \
      ~{if (unit_norm) then "--unitnorm" else ""} \
      ~{if (test_each_iteration) then "--test-each-iteration" else ""} \
      ~{if (override) then "--override" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (doc) then "--doc" else ""} \
      ~{if (klammer) then "--klammer" else ""} \
      ~{if defined(results_peptides) then ("--results-peptides " +  '"' + results_peptides + '"') else ""} \
      ~{if defined(decoy_results_peptides) then ("--decoy-results-peptides " +  '"' + decoy_results_peptides + '"') else ""} \
      ~{if defined(results_psms) then ("--results-psms " +  '"' + results_psms + '"') else ""} \
      ~{if defined(decoy_results_psms) then ("--decoy-results-psms " +  '"' + decoy_results_psms + '"') else ""} \
      ~{if (only_psms) then "--only-psms" else ""} \
      ~{if (post_processing_mix_max) then "--post-processing-mix-max" else ""} \
      ~{if (post_processing_tdc) then "--post-processing-tdc" else ""} \
      ~{if defined(search_input) then ("--search-input " +  '"' + search_input + '"') else ""} \
      ~{if (no_schema_validation) then "--no-schema-validation" else ""} \
      ~{if defined(picked_protein) then ("--picked-protein " +  '"' + picked_protein + '"') else ""} \
      ~{if (fido_protein) then "--fido-protein" else ""} \
      ~{if defined(results_proteins) then ("--results-proteins " +  '"' + results_proteins + '"') else ""} \
      ~{if defined(decoy_results_proteins) then ("--decoy-results-proteins " +  '"' + decoy_results_proteins + '"') else ""} \
      ~{if defined(protein_decoy_pattern) then ("--protein-decoy-pattern " +  '"' + protein_decoy_pattern + '"') else ""} \
      ~{if (protein_enzyme) then "--protein-enzyme" else ""} \
      ~{if (protein_report_fragments) then "--protein-report-fragments" else ""} \
      ~{if (protein_report_duplicates) then "--protein-report-duplicates" else ""} \
      ~{if defined(fido_alpha) then ("--fido-alpha " +  '"' + fido_alpha + '"') else ""} \
      ~{if defined(fido_beta) then ("--fido-beta " +  '"' + fido_beta + '"') else ""} \
      ~{if defined(fido_gamma) then ("--fido-gamma " +  '"' + fido_gamma + '"') else ""} \
      ~{if (fido_empirical_protein_q) then "--fido-empirical-protein-q" else ""} \
      ~{if defined(fido_grid_search_depth) then ("--fido-gridsearch-depth " +  '"' + fido_grid_search_depth + '"') else ""} \
      ~{if defined(fido_fast_grid_search) then ("--fido-fast-gridsearch " +  '"' + fido_fast_grid_search + '"') else ""} \
      ~{if (fido_no_split_large_components) then "--fido-no-split-large-components" else ""} \
      ~{if defined(fido_protein_truncation_threshold) then ("--fido-protein-truncation-threshold " +  '"' + fido_protein_truncation_threshold + '"') else ""} \
      ~{if defined(fido_grid_search_mse_threshold) then ("--fido-gridsearch-mse-threshold " +  '"' + fido_grid_search_mse_threshold + '"') else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(nested_xval_bins) then ("--nested-xval-bins " +  '"' + nested_xval_bins + '"') else ""} \
      ~{if defined(spectral_counting_fdr) then ("--spectral-counting-fdr " +  '"' + spectral_counting_fdr + '"') else ""} \
      ~{if (train_best_positive) then "--train-best-positive" else ""} \
      ~{if defined(train_fdr_initial) then ("--train-fdr-initial " +  '"' + train_fdr_initial + '"') else ""} \
      ~{if defined(parameter_file) then ("--parameter-file " +  '"' + parameter_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    xml_output: "Path to xml-output (pout) file."
    std_input_tab: "Read percolator tab-input format\\n(pin-tab) from standard input"
    std_input_xml: "Read percolator xml-input format\\n(pin-xml) from standard input"
    decoy_xml_output: "Include decoys (PSMs, peptides\\nand/or proteins) in the\\nxml-output. Only available if -X\\nis set."
    cpos: "Cpos, penalty for mistakes made on\\npositive examples. Set by cross\\nvalidation if not specified."
    c_neg: "Cneg, penalty for mistakes made on\\nnegative examples. Set by cross\\nvalidation if not specified or if\\n-p is not specified."
    test_fdr: "False discovery rate threshold for\\nevaluating best cross validation\\nresult and reported end result.\\nDefault = 0.01."
    train_fdr: "False discovery rate threshold to\\ndefine positive examples in\\ntraining. Set to testFDR if 0.\\nDefault = 0.01."
    maxiter: "Maximal number of iterations.\\nDefault = 10."
    subset_max_train: "Only train an SVM on a subset of\\n<x> PSMs, and use the resulting\\nscore vector to evaluate the other\\nPSMs. Recommended when analyzing\\nhuge numbers (>1 million) of PSMs.\\nWhen set to 0, all PSMs are used\\nfor training as normal. Default =\\n0."
    quick_validation: "Quicker execution by reduced\\ninternal cross-validation."
    tab_out: "Output computed features to given\\nfile in pin-tab format."
    tab_in: "[set by default] Input file given\\nin pin-tab format. This is the\\ndefault setting, flag only present\\nfor backwards compatibility."
    xml_in: "Input file given in deprecated\\npin-xml format generated by e.g.\\nsqt2pin with the -k option"
    weights: "Output final weights to the given"
    in_it_weights: "Read the unnormalized initial\\nweights from the third line of the\\ngiven file. This can be the output\\nof the --weights option from a\\nprevious Percolator analysis. Note\\nthat the weights must be in the\\nsame order as the features in the\\nPSM input file(s)."
    static: "Use the provided initial weights\\nas a static model. If used, the\\n--init-weights option must be\\nspecified."
    default_direction: "<[-]?featureName>        Use given feature name as initial\\nsearch direction, can be negated\\nto indicate that a lower value is\\nbetter."
    verbose: "Set verbosity of output: 0=no\\nprocessing info, 5=all. Default =\\n2"
    no_terminate: "Do not stop execution when\\nencountering questionable SVM\\ninputs or results."
    unit_norm: "Use unit normalization [0-1]\\ninstead of standard deviation\\nnormalization"
    test_each_iteration: "Measure performance on test set\\neach iteration"
    override: "Override error check and do not\\nfall back on default score vector\\nin case of suspect score vector\\nfrom SVM."
    seed: "Set seed of the random number\\ngenerator. Default = 1"
    doc: "Include description of correct\\nfeatures, i.e. features describing\\nthe difference between the\\nobserved and predicted isoelectric\\npoint, retention time and\\nprecursor mass."
    klammer: "Retention time features are\\ncalculated as in Klammer et al.\\nOnly available if -D is set."
    results_peptides: "Output tab delimited results of\\npeptides to a file instead of\\nstdout (will be ignored if used\\nwith -U option)"
    decoy_results_peptides: "Output tab delimited results for\\ndecoy peptides into a file (will\\nbe ignored if used with -U option)"
    results_psms: "Output tab delimited results of\\nPSMs to a file instead of stdout"
    decoy_results_psms: "Output tab delimited results for\\ndecoy PSMs into a file"
    only_psms: "Report results only at the PSM\\nlevel. This flag causes Percolator\\nto skip the step that selects the\\ntop-scoring PSM per peptide;\\nhence, peptide-level results are\\nleft out and only PSM-level\\nresults are reported."
    post_processing_mix_max: "Use the mix-max method to assign\\nq-values and PEPs. Note that this\\noption only has an effect if the\\ninput PSMs are from separate\\ntarget and decoy searches. This is\\nthe default setting."
    post_processing_tdc: "Replace the mix-max method by\\ntarget-decoy competition for\\nassigning q-values and PEPs. If\\nthe input PSMs are from separate\\ntarget and decoy searches,\\nPercolator's SVM scores will be\\nused to eliminate the lower\\nscoring target or decoy PSM(s) of\\neach scan+expMass combination. If\\nthe input PSMs are detected to be\\ncoming from a concatenated search,\\nthis option will be turned on\\nautomatically, as this is\\nincompatible with the mix-max\\nmethod. In case this detection\\nfails, turn this option on\\nexplicitly."
    search_input: "Specify the type of target-decoy\\nsearch: \\\"auto\\\" (Percolator\\nattempts to detect the search type\\nautomatically), \\\"concatenated\\\"\\n(single search on concatenated\\ntarget-decoy protein db) or\\n\\\"separate\\\" (two searches, one\\nagainst target and one against\\ndecoy protein db). Default =\\n\\\"auto\\\"."
    no_schema_validation: "Skip validation of input file\\nagainst xml schema."
    picked_protein: "Use the picked protein-level FDR\\nto infer protein probabilities.\\nProvide the fasta file as the\\nargument to this flag, which will\\nbe used for protein grouping based\\non an in-silico digest. If no\\nfasta file is available or protein\\ngrouping is not desired, set this\\nflag to \\\"auto\\\" to skip protein\\ngrouping."
    fido_protein: "Use the Fido algorithm to infer\\nprotein probabilities"
    results_proteins: "Output tab delimited results of\\nproteins to a file instead of\\nstdout (Only valid if option -A or\\n-f is active)"
    decoy_results_proteins: "Output tab delimited results for\\ndecoy proteins into a file (Only\\nvalid if option -A or -f is\\nactive)"
    protein_decoy_pattern: "Define the text pattern to\\nidentify decoy proteins in the\\ndatabase for the picked-protein\\nalgorithm. This will have no\\neffect on the target/decoy labels\\nspecified in the input file.\\nDefault = \\\"random_\\\"."
    protein_enzyme: "Type of enzyme used for in silico\\nprotein digestion for picked\\nprotein-level FDR estimation. One\\nof\\n\\\"no_enzyme\\\",\\\"elastase\\\",\\\"pepsin\\\",\\\"p\\nroteinasek\\\",\\\"thermolysin\\\",\\\"trypsin\\np\\\",\\\"chymotrypsin\\\",\\\"lys-n\\\",\\\"lys-c\\\",\\n\\\"arg-c\\\",\\\"asp-n\\\",\\\"glu-c\\\",\\\"trypsin\\\".\\nDefault=\\\"trypsin\\\"."
    protein_report_fragments: "By default, if the peptides\\nassociated with protein A are a\\nproper subset of the peptides\\nassociated with protein B, then\\nprotein A is eliminated and all\\nthe peptides are considered as\\nevidence for protein B. Note that\\nthis filtering is done based on\\nthe complete set of peptides in\\nthe database, not based on the\\nidentified peptides in the search\\nresults. Alternatively, if this\\noption is set and if all of the\\nidentified peptides associated\\nwith protein B are also associated\\nwith protein A, then Percolator\\nwill report a comma-separated list\\nof protein IDs, where the\\nfull-length protein B is first in\\nthe list and the fragment protein\\nA is listed second. Commas inside\\nprotein IDs will be replaced by\\nsemicolons. Not available for\\nFido."
    protein_report_duplicates: "If this option is set and multiple\\ndatabase proteins contain exactly\\nthe same set of peptides, then the\\nIDs of these duplicated proteins\\nwill be reported as a\\ncomma-separated list, instead of\\nthe default behavior of randomly\\ndiscarding all but one of the\\nproteins. Commas inside protein\\nIDs will be replaced by\\nsemicolons. Not available for\\nFido."
    fido_alpha: "Set Fido's probability with which\\na present protein emits an\\nassociated peptide.        Set by\\ngrid search if not specified."
    fido_beta: "Set Fido's probability of creation\\nof a peptide from noise. Set by\\ngrid search if not specified."
    fido_gamma: "Set Fido's prior probability that\\na protein is present in the\\nsample. Set by grid search if not\\nspecified."
    fido_empirical_protein_q: "Output empirical p-values and\\nq-values for Fido using\\ntarget-decoy analysis to XML\\noutput (only valid if -X flag is\\npresent)."
    fido_grid_search_depth: "Setting the gridsearch-depth to 0\\n(fastest), 1 or 2 (slowest)\\ncontrols how much computational\\ntime is required for the\\nestimation of alpha, beta and\\ngamma parameters for Fido. Default\\n= 0."
    fido_fast_grid_search: "Apply the specified threshold to\\nPSM, peptide and protein\\nprobabilities to obtain a faster\\nestimate of the alpha, beta and\\ngamma parameters. Default = 0;\\nRecommended when set = 0.2."
    fido_no_split_large_components: "Do not approximate the posterior\\ndistribution by allowing large\\ngraph components to be split into\\nsubgraphs. The splitting is done\\nby duplicating peptides with low\\nprobabilities. Splitting continues\\nuntil the number of possible\\nconfigurations of each subgraph is\\nbelow 2^18."
    fido_protein_truncation_threshold: "To speed up inference, proteins\\nfor which none of the associated\\npeptides has a probability\\nexceeding the specified threshold\\nwill be assigned probability = 0.\\nDefault = 0.01."
    fido_grid_search_mse_threshold: "Q-value threshold that will be\\nused in the computation of the MSE\\nand ROC AUC score in the grid\\nsearch. Recommended 0.05 for\\nnormal size datasets and 0.1 for\\nlarge datasets. Default = 0.1"
    num_threads: "Number of total parallel threads\\nfor SVM training during cross\\nvalidation. Default (one thread\\nper CV fold) = 3."
    nested_xval_bins: "Number of nested cross validation\\nbins within each cross validation\\nbin. This should reduce\\noverfitting of the\\nhyperparameters. Default = 1."
    spectral_counting_fdr: "Activates spectral counting on\\nprotein level (either\\n--fido-protein or --picked-protein\\nhas to be set) at the specified\\nPSM q-value threshold. Adds two\\ncolumns, \\\"spec_count_unique\\\" and\\n\\\"spec_count_all\\\", to the protein\\ntab separated output, containing\\nthe spectral count for the\\npeptides unique to the protein and\\nthe spectral count including\\nshared peptides respectively."
    train_best_positive: "Enforce that, for each spectrum,\\nat most one PSM is included in the\\npositive set during each training\\niteration. If the user only\\nprovides one PSM per spectrum,\\nthis filter will have no effect."
    train_fdr_initial: "Set the FDR threshold for the\\nfirst iteration. This is useful in\\ncases where the original features\\ndo not display a good separation\\nbetween targets and decoys. In\\nsubsequent iterations, the normal\\n--trainFDR will be used."
    parameter_file: "Read flags from a parameter file.\\nIf flags are specified on the\\ncommand line as well, these will\\noverride the ones in the parameter\\nfile.\\n"
    w_filename: "-W <filename>"
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