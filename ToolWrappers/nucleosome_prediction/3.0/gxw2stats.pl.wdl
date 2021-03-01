version 1.0

task Gxw2statspl {
  input {
    File? matrices_file_gxw
    File? use_matrix_matrices
    Boolean? pws
    File? sequences_file_fasta
    File? use_only_sequences
    Int? sil
    Int? siw
    Boolean? no_preload
    Int? temp
    Int? background_order_default
    File? bck
    Int? bc_kr
    Boolean? local_bck
    Int? rsf
    Int? sff
    File? coop
    Int? mcd
    File? g_hmm
    Int? sim
    Int? max_pvalue_print
    File? precision
    Int? max_training_iterations
    Boolean? best
    Boolean? best_windows
    Boolean? norc
    String? stats_type_compute
    Int? min_avg
    Int? max_avg
    Boolean? start_avg
    Boolean? avg
    Int? matrix_flank
    Boolean? sum_matrices
    Boolean? print_chv
    Int? moving_window
    Boolean? no_separate_matrices
    Boolean? all
    Boolean? ds
    Int? min_score
    Int? masi
    Boolean? fds_osi
    Int? sip
    Boolean? dont_sort
    Float? mhos
    Int? wmc_nm
    Int? wm_cdw
    Int? wmc_di
    Int? ns
    Boolean? sfd
    Boolean? smc
    Boolean? amc
    Int? camc
    Boolean? cp
    Boolean? cmc
    Boolean? xml
    File? run
    File? s_xml
  }
  command <<<
    gxw2stats_pl \
      ~{if defined(matrices_file_gxw) then ("-m " +  '"' + matrices_file_gxw + '"') else ""} \
      ~{if defined(use_matrix_matrices) then ("-n " +  '"' + use_matrix_matrices + '"') else ""} \
      ~{if (pws) then "-pws" else ""} \
      ~{if defined(sequences_file_fasta) then ("-s " +  '"' + sequences_file_fasta + '"') else ""} \
      ~{if defined(use_only_sequences) then ("-l " +  '"' + use_only_sequences + '"') else ""} \
      ~{if defined(sil) then ("-sil " +  '"' + sil + '"') else ""} \
      ~{if defined(siw) then ("-siw " +  '"' + siw + '"') else ""} \
      ~{if (no_preload) then "-no_preload" else ""} \
      ~{if defined(temp) then ("-temp " +  '"' + temp + '"') else ""} \
      ~{if defined(background_order_default) then ("-b " +  '"' + background_order_default + '"') else ""} \
      ~{if defined(bck) then ("-bck " +  '"' + bck + '"') else ""} \
      ~{if defined(bc_kr) then ("-bckr " +  '"' + bc_kr + '"') else ""} \
      ~{if (local_bck) then "-local_bck" else ""} \
      ~{if defined(rsf) then ("-rsf " +  '"' + rsf + '"') else ""} \
      ~{if defined(sff) then ("-sff " +  '"' + sff + '"') else ""} \
      ~{if defined(coop) then ("-coop " +  '"' + coop + '"') else ""} \
      ~{if defined(mcd) then ("-mcd " +  '"' + mcd + '"') else ""} \
      ~{if defined(g_hmm) then ("-ghmm " +  '"' + g_hmm + '"') else ""} \
      ~{if defined(sim) then ("-sim " +  '"' + sim + '"') else ""} \
      ~{if defined(max_pvalue_print) then ("-p " +  '"' + max_pvalue_print + '"') else ""} \
      ~{if defined(precision) then ("-precision " +  '"' + precision + '"') else ""} \
      ~{if defined(max_training_iterations) then ("-i " +  '"' + max_training_iterations + '"') else ""} \
      ~{if (best) then "-best" else ""} \
      ~{if (best_windows) then "-best_windows" else ""} \
      ~{if (norc) then "-norc" else ""} \
      ~{if defined(stats_type_compute) then ("-t " +  '"' + stats_type_compute + '"') else ""} \
      ~{if defined(min_avg) then ("-min_avg " +  '"' + min_avg + '"') else ""} \
      ~{if defined(max_avg) then ("-max_avg " +  '"' + max_avg + '"') else ""} \
      ~{if (start_avg) then "-start_avg" else ""} \
      ~{if (avg) then "-avg" else ""} \
      ~{if defined(matrix_flank) then ("-matrix_flank " +  '"' + matrix_flank + '"') else ""} \
      ~{if (sum_matrices) then "-sum_matrices" else ""} \
      ~{if (print_chv) then "-print_chv" else ""} \
      ~{if defined(moving_window) then ("-moving_window " +  '"' + moving_window + '"') else ""} \
      ~{if (no_separate_matrices) then "-no_separate_matrices" else ""} \
      ~{if (all) then "-all" else ""} \
      ~{if (ds) then "-ds" else ""} \
      ~{if defined(min_score) then ("-min_score " +  '"' + min_score + '"') else ""} \
      ~{if defined(masi) then ("-masi " +  '"' + masi + '"') else ""} \
      ~{if (fds_osi) then "-fdsosi" else ""} \
      ~{if defined(sip) then ("-sip " +  '"' + sip + '"') else ""} \
      ~{if (dont_sort) then "-dontSort" else ""} \
      ~{if defined(mhos) then ("-mhos " +  '"' + mhos + '"') else ""} \
      ~{if defined(wmc_nm) then ("-wmcnm " +  '"' + wmc_nm + '"') else ""} \
      ~{if defined(wm_cdw) then ("-wmcdw " +  '"' + wm_cdw + '"') else ""} \
      ~{if defined(wmc_di) then ("-wmcdi " +  '"' + wmc_di + '"') else ""} \
      ~{if defined(ns) then ("-ns " +  '"' + ns + '"') else ""} \
      ~{if (sfd) then "-sfd" else ""} \
      ~{if (smc) then "-smc" else ""} \
      ~{if (amc) then "-amc" else ""} \
      ~{if defined(camc) then ("-camc " +  '"' + camc + '"') else ""} \
      ~{if (cp) then "-cp" else ""} \
      ~{if (cmc) then "-cmc" else ""} \
      ~{if (xml) then "-xml" else ""} \
      ~{if defined(run) then ("-run " +  '"' + run + '"') else ""} \
      ~{if defined(s_xml) then ("-sxml " +  '"' + s_xml + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrices_file_gxw: ":         matrices file (gxw format)"
    use_matrix_matrices: ":         use this matrix only out of the gxw file (default: use all matrices)"
    pws: ":             process weight matrices separately (applicable to all commands)"
    sequences_file_fasta: ":         sequences file (fasta format)"
    use_only_sequences: ":         use only these sequences from the file <str> (default: use all sequences in fasta file)"
    sil: ":       use sliding window on sequence: this parameter specifies substring iterator length"
    siw: ":       use sliding window on sequence: this parameter specifies distance between two substrings"
    no_preload: ":      load the sequences one by one (default: preload the sequences)"
    temp: ":      Temperature scaling (default: 1.0)"
    background_order_default: ":         background order (default: 0)"
    bck: ":       Background matrix file to load (optional, background will be computed form the sequences otherwise)"
    bc_kr: ":      Background matrix to matrices ratio (default: -1 for equal value between background and matrices)"
    local_bck: ":       Compute the background locally for each sequence (as opposed to a single global matrix)"
    rsf: ":       Regulator scaling factor (default: -1 for using the background ratios.\\nFormat: <num> or <min>,<max>,<mul> where the latter is to go from min to max in multiplication jumps <mul>"
    sff: ":       Regulator scaling factor file"
    coop: ":      Cooperativity parameters file"
    mcd: ":       Max cooperativity distance in basepairs (default: 100)"
    g_hmm: ":      Type of GHMM instance to be used\\n(default: if coop file is given - Cooperative ; else - Basic)\\nOptions: Basic\\nBasicCooperative\\nCooperative"
    sim: ":       Number of simulations to perform (default: 0)"
    max_pvalue_print: ":         Max p-value for which to print (default: 1)"
    precision: ": Precision for output file (default: 3)"
    max_training_iterations: ":         max training iterations (default: 100)"
    best: ":            print the best score across the sequence (or individual windows)"
    best_windows: ":    print the best score across all windows"
    norc: ":            do *not* use reverse complement in sequence (default: use reverse complement)"
    stats_type_compute: ":         stats type to compute (default: WeightMatrixPositions)\\nOptions: WeightMatrixAverageOccupancy\\nWeightMatrixClustering\\nWeightMatrixCounts\\nWeightMatrixFreeEnergy\\nWeightMatrixMaxConfiguration\\nWeightMatrixPositions\\nWeightMatrixSequenceFeatures"
    min_avg: ":        Minimum average occupancy to print (default: 0)"
    max_avg: ":        Maximum average occupancy to print (default: 1)"
    start_avg: ":            Print the probability of starting matrices as opposed to average occupancies"
    avg: ":                  Print the fraction occupancy of the matrix across the entire region"
    matrix_flank: ":   Compute the avg occupancy of the matrix only within its central bps without <num> flank on each side (default: 0)"
    sum_matrices: ":         Print the sum of all matrices"
    print_chv: ":            Print the results in a chv format"
    moving_window: ":  Print the results as a combined (num/2 on each side) moving average window of <num>"
    no_separate_matrices: ": Do **not** print each matrix separately"
    all: ":             print the score for each position"
    ds: ":              double-strand binding (average strands)"
    min_score: ": Minimum score to print"
    masi: ":      Maximum allowed sequence inserts"
    fds_osi: ":          Force double strand when doing sequence inserts"
    sip: ":       Sequence insert penalty"
    dont_sort: ":        don't sort according to score, print by position (useful when you want to intersect the results according to position)"
    mhos: ":      Minimum high occupancy sites (specify multiple cutoffs with ';', e.g., \\\"0.1;0.2\\\") (default: 0.5)"
    wmc_nm: ":     Weight matrix clustering num matrices (default: 1)"
    wm_cdw: ":     Weight matrix clustering distance window (default: -1 for cumulative clustering, not specific windows)"
    wmc_di: ":     Weight matrix clustering distance increment (default: 10)"
    ns: ":        Num samples"
    sfd: ":             Description sequence feature"
    smc: ":             Single matrices counts"
    amc: ":             All matrices counts"
    camc: ":      Configuration adjacent matrices counts (str has the form: <min;max;inc;XXX;NoFunction/Gaussian;mean;std>)\\n[XXX] = CombinedAdjacentMatricesCount/SeparateAdjacentMatricesCount/SeparateProximalMatricesCount"
    cp: ":              Configuration probabilities"
    cmc: ":             Configuration matrices coverage"
    xml: ":             print only the xml file"
    run: ":       Print the stdout and stderr of the program into the file <str>"
    s_xml: ":      Save the xml file into <str>"
  }
  output {
    File out_stdout = stdout()
    File out_use_matrix_matrices = "${in_use_matrix_matrices}"
    File out_precision = "${in_precision}"
  }
}