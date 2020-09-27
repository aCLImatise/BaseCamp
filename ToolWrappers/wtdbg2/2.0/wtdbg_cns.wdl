version 1.0

task Wtdbgcns {
  input {
    Int? number_of_threads
    File? input_files_wtdbg
    String? output_files
    Boolean? force_overwrite
    Int? expected_length_say
    Int? kmer_size_long
    Int? zcutoff_drop_score
    Int? wcutoff_drop_set
    Int? high_coverage_bonus
    Int? candidate_strategy_bestkmers
    Int? match_score
    Int? mismatch_score
    Int? insertion_score
    Int? deletion_score
    Int? gap_extension_score
    Int? dbg_correction_correction
    Int? correct_structure_error
    Boolean? verbose
  }
  command <<<
    wtdbg_cns \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(input_files_wtdbg) then ("-i " +  '"' + input_files_wtdbg + '"') else ""} \
      ~{if defined(output_files) then ("-o " +  '"' + output_files + '"') else ""} \
      ~{if (force_overwrite) then "-f" else ""} \
      ~{if defined(expected_length_say) then ("-j " +  '"' + expected_length_say + '"') else ""} \
      ~{if defined(kmer_size_long) then ("-k " +  '"' + kmer_size_long + '"') else ""} \
      ~{if defined(zcutoff_drop_score) then ("-Z " +  '"' + zcutoff_drop_score + '"') else ""} \
      ~{if defined(wcutoff_drop_set) then ("-W " +  '"' + wcutoff_drop_set + '"') else ""} \
      ~{if defined(high_coverage_bonus) then ("-H " +  '"' + high_coverage_bonus + '"') else ""} \
      ~{if defined(candidate_strategy_bestkmers) then ("-c " +  '"' + candidate_strategy_bestkmers + '"') else ""} \
      ~{if defined(match_score) then ("-M " +  '"' + match_score + '"') else ""} \
      ~{if defined(mismatch_score) then ("-X " +  '"' + mismatch_score + '"') else ""} \
      ~{if defined(insertion_score) then ("-I " +  '"' + insertion_score + '"') else ""} \
      ~{if defined(deletion_score) then ("-D " +  '"' + deletion_score + '"') else ""} \
      ~{if defined(gap_extension_score) then ("-E " +  '"' + gap_extension_score + '"') else ""} \
      ~{if defined(dbg_correction_correction) then ("-m " +  '"' + dbg_correction_correction + '"') else ""} \
      ~{if defined(correct_structure_error) then ("-S " +  '"' + correct_structure_error + '"') else ""} \
      ~{if (verbose) then "-v" else ""}
  >>>
  parameter_meta {
    number_of_threads: "Number of threads, [1]"
    input_files_wtdbg: "Input file(s) *.utg.cns from wtdbg, +, [STDIN]"
    output_files: "Output files, [STDOUT]"
    force_overwrite: "Force overwrite"
    expected_length_say: "Expected length of node, or say the overlap length of two adject units in layout file, [1000] bp"
    kmer_size_long: "Kmer size for long reads, [15]"
    zcutoff_drop_score: "Z-cutoff, drop the lower  (score / <-X>), [4]"
    wcutoff_drop_set: "W-cutoff, drop the lagger (position), [48]\\nIn DAG correction, -W set the bandwidth of alignment"
    high_coverage_bonus: "High coverage bonus, [1]"
    candidate_strategy_bestkmers: "Candidate strategy, 0: best-kmers, 1: median length, 2: first (include), 3: first (exclude), 4: longest, 5, shortest, [0]\\nIn DAG correction, force to use strategy 2"
    match_score: "Match score, [2]"
    mismatch_score: "Mismatch score, [-7]"
    insertion_score: "Insertion score, [-3]"
    deletion_score: "Deletion score, [-4]"
    gap_extension_score: "Gap extension score, [-2]"
    dbg_correction_correction: "1: DBG correction; 2: DAG correction, [1]"
    correct_structure_error: "whether to correct structure before error correction, [1]"
    verbose: "Verbose"
  }
  output {
    File out_stdout = stdout()
  }
}