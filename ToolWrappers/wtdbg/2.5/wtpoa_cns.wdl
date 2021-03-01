version 1.0

task Wtpoacns {
  input {
    Int? number_of_threads
    String? reference_sequences_sam
    Int? xored_flags_handle
    Boolean? force_use_mode
    File? similar_translate_sam
    File? input_files_sorted
    String? output_files
    Boolean? force_overwrite
    Int? expected_max_length
    Int? bonus_tribases_match
    Int? match_score
    Int? mismatch_score
    Int? insertion_score
    Int? deletion_score
    Float? homopolymer_merge_score
    Float? bandwidth_poa_program
    Int? window_size_is
    Int? min_size_aligned
    Boolean? abort_tripoa_when
    Int? shuffle_mode_shuffle
    Int? realignment_bandwidth_disable
    Int? consensus_mode_runlength
    Int? min_count_call
    Float? min_frequency_nongap
    Int? max_number_going
    Int? presets_samsr_polishs
    Boolean? quiet
    Boolean? verbose
    Boolean? print_version_information
  }
  command <<<
    wtpoa_cns \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(reference_sequences_sam) then ("-d " +  '"' + reference_sequences_sam + '"') else ""} \
      ~{if defined(xored_flags_handle) then ("-u " +  '"' + xored_flags_handle + '"') else ""} \
      ~{if (force_use_mode) then "-r" else ""} \
      ~{if defined(similar_translate_sam) then ("-p " +  '"' + similar_translate_sam + '"') else ""} \
      ~{if defined(input_files_sorted) then ("-i " +  '"' + input_files_sorted + '"') else ""} \
      ~{if defined(output_files) then ("-o " +  '"' + output_files + '"') else ""} \
      ~{if (force_overwrite) then "-f" else ""} \
      ~{if defined(expected_max_length) then ("-j " +  '"' + expected_max_length + '"') else ""} \
      ~{if defined(bonus_tribases_match) then ("-b " +  '"' + bonus_tribases_match + '"') else ""} \
      ~{if defined(match_score) then ("-M " +  '"' + match_score + '"') else ""} \
      ~{if defined(mismatch_score) then ("-X " +  '"' + mismatch_score + '"') else ""} \
      ~{if defined(insertion_score) then ("-I " +  '"' + insertion_score + '"') else ""} \
      ~{if defined(deletion_score) then ("-D " +  '"' + deletion_score + '"') else ""} \
      ~{if defined(homopolymer_merge_score) then ("-H " +  '"' + homopolymer_merge_score + '"') else ""} \
      ~{if defined(bandwidth_poa_program) then ("-B " +  '"' + bandwidth_poa_program + '"') else ""} \
      ~{if defined(window_size_is) then ("-W " +  '"' + window_size_is + '"') else ""} \
      ~{if defined(min_size_aligned) then ("-w " +  '"' + min_size_aligned + '"') else ""} \
      ~{if (abort_tripoa_when) then "-A" else ""} \
      ~{if defined(shuffle_mode_shuffle) then ("-S " +  '"' + shuffle_mode_shuffle + '"') else ""} \
      ~{if defined(realignment_bandwidth_disable) then ("-R " +  '"' + realignment_bandwidth_disable + '"') else ""} \
      ~{if defined(consensus_mode_runlength) then ("-c " +  '"' + consensus_mode_runlength + '"') else ""} \
      ~{if defined(min_count_call) then ("-C " +  '"' + min_count_call + '"') else ""} \
      ~{if defined(min_frequency_nongap) then ("-F " +  '"' + min_frequency_nongap + '"') else ""} \
      ~{if defined(max_number_going) then ("-N " +  '"' + max_number_going + '"') else ""} \
      ~{if defined(presets_samsr_polishs) then ("-x " +  '"' + presets_samsr_polishs + '"') else ""} \
      ~{if (quiet) then "-q" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if (print_version_information) then "-V" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_of_threads: "Number of threads, [4]"
    reference_sequences_sam: "Reference sequences for SAM input, will invoke sorted-SAM input mode"
    xored_flags_handle: "XORed flags to handle SAM input. [0]\\n0x1: Only process reference regions present in/between SAM alignments\\n0x2: Don't fileter secondary/supplementary SAM records with flag (0x100 | 0x800)"
    force_use_mode: "Force to use reference mode"
    similar_translate_sam: "Similar with -d, but translate SAM into wtdbg layout file"
    input_files_sorted: "Input file(s) *.ctg.lay from wtdbg, +, [STDIN]\\nOr sorted SAM files when having -d/-p"
    output_files: "Output files, [STDOUT]"
    force_overwrite: "Force overwrite"
    expected_max_length: "Expected max length of node, or say the overlap length of two adjacent units in layout file, [1500] bp\\noverlap will be default to 1500(or 150 for sam-sr) when having -d/-p, block size will be 2.5 * overlap"
    bonus_tribases_match: "Bonus for tri-bases match, [0]"
    match_score: "Match score, [2]"
    mismatch_score: "Mismatch score, [-5]"
    insertion_score: "Insertion score, [-2]"
    deletion_score: "Deletion score, [-4]"
    homopolymer_merge_score: "Homopolymer merge score used in dp-call-cns mode, [-3]"
    bandwidth_poa_program: "Bandwidth in POA, [Wmin[,Wmax[,mat_rate]]], mat_rate = matched_bases/total_bases [64,1024,0.92]\\nProgram will double bandwidth from Wmin to Wmax when mat_rate is lower than setting"
    window_size_is: "Window size in the middle of the first read for fast align remaining reads, [200]\\nIf $W is negative, will disable fast align, but use the abs($W) as Band align score cutoff"
    min_size_aligned: "Min size of aligned size in window, [$W * 0.5]"
    abort_tripoa_when: "Abort TriPOA when any read cannot be fast aligned, then try POA"
    shuffle_mode_shuffle: "Shuffle mode, 0: don't shuffle reads, 1: by shared kmers, 2: subsampling. [1]"
    realignment_bandwidth_disable: "Realignment bandwidth, 0: disable, [16]"
    consensus_mode_runlength: "Consensus mode: 0, run-length; 1, dp-call-cns, [0]"
    min_count_call: "Min count of bases to call a consensus base, [3]"
    min_frequency_nongap: "Min frequency of non-gap bases to call a consensus base, [0.5]"
    max_number_going: "Max number of reads in PO-MSA [20]\\nKeep in mind that I am not going to generate high accurate consensus sequences here"
    presets_samsr_polishs: "Presets, []\\nsam-sr: polishs contigs from short reads mapping, accepts sorted SAM files\\nshorted for '-j 50 -W 0 -R 0 -b 1 -c 1 -N 50 -rS 2'"
    quiet: "Quiet"
    verbose: "Verbose"
    print_version_information: "Print version information and then exit"
  }
  output {
    File out_stdout = stdout()
  }
}