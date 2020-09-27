class: CommandLineTool
id: gxw2stats.pl.cwl
inputs:
- id: in_matrices_file_gxw
  doc: ':         matrices file (gxw format)'
  type: File
  inputBinding:
    prefix: -m
- id: in_use_matrix_use
  doc: ':         use this matrix only out of the gxw file (default: use all matrices)'
  type: File
  inputBinding:
    prefix: -n
- id: in_pws
  doc: ':             process weight matrices separately (applicable to all commands)'
  type: boolean
  inputBinding:
    prefix: -pws
- id: in_sequences_file_fasta
  doc: ':         sequences file (fasta format)'
  type: File
  inputBinding:
    prefix: -s
- id: in_use_only_sequences
  doc: ':         use only these sequences from the file <str> (default: use all sequences
    in fasta file)'
  type: File
  inputBinding:
    prefix: -l
- id: in_sil
  doc: ':       use sliding window on sequence: this parameter specifies substring
    iterator length'
  type: long
  inputBinding:
    prefix: -sil
- id: in_siw
  doc: ':       use sliding window on sequence: this parameter specifies distance
    between two substrings'
  type: long
  inputBinding:
    prefix: -siw
- id: in_no_preload
  doc: ':      load the sequences one by one (default: preload the sequences)'
  type: boolean
  inputBinding:
    prefix: -no_preload
- id: in_temp
  doc: ':      Temperature scaling (default: 1.0)'
  type: long
  inputBinding:
    prefix: -temp
- id: in_background_order_default
  doc: ':         background order (default: 0)'
  type: long
  inputBinding:
    prefix: -b
- id: in_bck
  doc: ':       Background matrix file to load (optional, background will be computed
    form the sequences otherwise)'
  type: File
  inputBinding:
    prefix: -bck
- id: in_bc_kr
  doc: ':      Background matrix to matrices ratio (default: -1 for equal value between
    background and matrices)'
  type: long
  inputBinding:
    prefix: -bckr
- id: in_local_bck
  doc: ':       Compute the background locally for each sequence (as opposed to a
    single global matrix)'
  type: boolean
  inputBinding:
    prefix: -local_bck
- id: in_rsf
  doc: ":       Regulator scaling factor (default: -1 for using the background ratios.\n\
    Format: <num> or <min>,<max>,<mul> where the latter is to go from min to max in\
    \ multiplication jumps <mul>"
  type: long
  inputBinding:
    prefix: -rsf
- id: in_sff
  doc: ':       Regulator scaling factor file'
  type: long
  inputBinding:
    prefix: -sff
- id: in_coop
  doc: ':      Cooperativity parameters file'
  type: File
  inputBinding:
    prefix: -coop
- id: in_mcd
  doc: ':       Max cooperativity distance in basepairs (default: 100)'
  type: long
  inputBinding:
    prefix: -mcd
- id: in_g_hmm
  doc: ":      Type of GHMM instance to be used\n(default: if coop file is given -\
    \ Cooperative ; else - Basic)\nOptions: Basic\nBasicCooperative\nCooperative"
  type: File
  inputBinding:
    prefix: -ghmm
- id: in_sim
  doc: ':       Number of simulations to perform (default: 0)'
  type: long
  inputBinding:
    prefix: -sim
- id: in_max_pvalue_print
  doc: ':         Max p-value for which to print (default: 1)'
  type: long
  inputBinding:
    prefix: -p
- id: in_precision
  doc: ': Precision for output file (default: 3)'
  type: File
  inputBinding:
    prefix: -precision
- id: in_max_training_iterations
  doc: ':         max training iterations (default: 100)'
  type: long
  inputBinding:
    prefix: -i
- id: in_best
  doc: ':            print the best score across the sequence (or individual windows)'
  type: boolean
  inputBinding:
    prefix: -best
- id: in_best_windows
  doc: ':    print the best score across all windows'
  type: boolean
  inputBinding:
    prefix: -best_windows
- id: in_norc
  doc: ':            do *not* use reverse complement in sequence (default: use reverse
    complement)'
  type: boolean
  inputBinding:
    prefix: -norc
- id: in_stats_type_compute
  doc: ":         stats type to compute (default: WeightMatrixPositions)\nOptions:\
    \ WeightMatrixAverageOccupancy\nWeightMatrixClustering\nWeightMatrixCounts\nWeightMatrixFreeEnergy\n\
    WeightMatrixMaxConfiguration\nWeightMatrixPositions\nWeightMatrixSequenceFeatures"
  type: string
  inputBinding:
    prefix: -t
- id: in_min_avg
  doc: ':        Minimum average occupancy to print (default: 0)'
  type: long
  inputBinding:
    prefix: -min_avg
- id: in_max_avg
  doc: ':        Maximum average occupancy to print (default: 1)'
  type: long
  inputBinding:
    prefix: -max_avg
- id: in_start_avg
  doc: ':            Print the probability of starting matrices as opposed to average
    occupancies'
  type: boolean
  inputBinding:
    prefix: -start_avg
- id: in_avg
  doc: ':                  Print the fraction occupancy of the matrix across the entire
    region'
  type: boolean
  inputBinding:
    prefix: -avg
- id: in_matrix_flank
  doc: ':   Compute the avg occupancy of the matrix only within its central bps without
    <num> flank on each side (default: 0)'
  type: long
  inputBinding:
    prefix: -matrix_flank
- id: in_sum_matrices
  doc: ':         Print the sum of all matrices'
  type: boolean
  inputBinding:
    prefix: -sum_matrices
- id: in_print_chv
  doc: ':            Print the results in a chv format'
  type: boolean
  inputBinding:
    prefix: -print_chv
- id: in_moving_window
  doc: ':  Print the results as a combined (num/2 on each side) moving average window
    of <num>'
  type: long
  inputBinding:
    prefix: -moving_window
- id: in_no_separate_matrices
  doc: ': Do **not** print each matrix separately'
  type: boolean
  inputBinding:
    prefix: -no_separate_matrices
- id: in_all
  doc: ':             print the score for each position'
  type: boolean
  inputBinding:
    prefix: -all
- id: in_ds
  doc: ':              double-strand binding (average strands)'
  type: boolean
  inputBinding:
    prefix: -ds
- id: in_min_score
  doc: ': Minimum score to print'
  type: long
  inputBinding:
    prefix: -min_score
- id: in_masi
  doc: ':      Maximum allowed sequence inserts'
  type: long
  inputBinding:
    prefix: -masi
- id: in_fds_osi
  doc: ':          Force double strand when doing sequence inserts'
  type: boolean
  inputBinding:
    prefix: -fdsosi
- id: in_sip
  doc: ':       Sequence insert penalty'
  type: long
  inputBinding:
    prefix: -sip
- id: in_dont_sort
  doc: ":        don't sort according to score, print by position (useful when you\
    \ want to intersect the results according to position)"
  type: boolean
  inputBinding:
    prefix: -dontSort
- id: in_mhos
  doc: ":      Minimum high occupancy sites (specify multiple cutoffs with ';', e.g.,\
    \ \"0.1;0.2\") (default: 0.5)"
  type: double
  inputBinding:
    prefix: -mhos
- id: in_wmc_nm
  doc: ':     Weight matrix clustering num matrices (default: 1)'
  type: long
  inputBinding:
    prefix: -wmcnm
- id: in_wm_cdw
  doc: ':     Weight matrix clustering distance window (default: -1 for cumulative
    clustering, not specific windows)'
  type: long
  inputBinding:
    prefix: -wmcdw
- id: in_wmc_di
  doc: ':     Weight matrix clustering distance increment (default: 10)'
  type: long
  inputBinding:
    prefix: -wmcdi
- id: in_ns
  doc: ':        Num samples'
  type: long
  inputBinding:
    prefix: -ns
- id: in_sfd
  doc: ':             Description sequence feature'
  type: boolean
  inputBinding:
    prefix: -sfd
- id: in_smc
  doc: ':             Single matrices counts'
  type: boolean
  inputBinding:
    prefix: -smc
- id: in_amc
  doc: ':             All matrices counts'
  type: boolean
  inputBinding:
    prefix: -amc
- id: in_camc
  doc: ":      Configuration adjacent matrices counts (str has the form: <min;max;inc;XXX;NoFunction/Gaussian;mean;std>)\n\
    [XXX] = CombinedAdjacentMatricesCount/SeparateAdjacentMatricesCount/SeparateProximalMatricesCount"
  type: long
  inputBinding:
    prefix: -camc
- id: in_cp
  doc: ':              Configuration probabilities'
  type: boolean
  inputBinding:
    prefix: -cp
- id: in_cmc
  doc: ':             Configuration matrices coverage'
  type: boolean
  inputBinding:
    prefix: -cmc
- id: in_xml
  doc: ':             print only the xml file'
  type: boolean
  inputBinding:
    prefix: -xml
- id: in_run
  doc: ':       Print the stdout and stderr of the program into the file <str>'
  type: File
  inputBinding:
    prefix: -run
- id: in_s_xml
  doc: ':      Save the xml file into <str>'
  type: File
  inputBinding:
    prefix: -sxml
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_use_matrix_use
  doc: ':         use this matrix only out of the gxw file (default: use all matrices)'
  type: File
  outputBinding:
    glob: $(inputs.in_use_matrix_use)
- id: out_precision
  doc: ': Precision for output file (default: 3)'
  type: File
  outputBinding:
    glob: $(inputs.in_precision)
cwlVersion: v1.1
baseCommand:
- gxw2stats.pl
