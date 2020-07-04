version 1.0

task WtpoaCns {
  input {
    Int? number_of_threads
    String? reference_sequences_sam
    Int? xored_flags_handle
    Boolean? force_use_mode
    String? similar_translate_sam
    String? input_files_sorted
    String? output_files
    Boolean? force_overwrite
    Int? expected_max_length
    Int? bonus_tribases_match
    Int? match_score
    Int? mismatch_score
    Int? insertion_score
    Int? deletion_score
    Float? homopolymer_merge_score
    String? bandwidth_poa_program
    Int? window_size_middle
    Int? min_size_aligned
    Boolean? abort_when_read
    Int? shuffle_mode_shuffle
    Int? realignment_bandwidth_disable
    Int? consensus_mode_runlength
    Int? min_count_call
    Float? min_frequency_call
    Int? max_number_reads
    String? presets_samsr_contigs
    Boolean? quiet
    Boolean? verbose
    Boolean? print_version_information
  }
  command <<<
    wtpoa-cns \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(reference_sequences_sam) then ("-d " +  '"' + reference_sequences_sam + '"') else ""} \
      ~{if defined(xored_flags_handle) then ("-u " +  '"' + xored_flags_handle + '"') else ""} \
      ~{true="-r" false="" force_use_mode} \
      ~{if defined(similar_translate_sam) then ("-p " +  '"' + similar_translate_sam + '"') else ""} \
      ~{if defined(input_files_sorted) then ("-i " +  '"' + input_files_sorted + '"') else ""} \
      ~{if defined(output_files) then ("-o " +  '"' + output_files + '"') else ""} \
      ~{true="-f" false="" force_overwrite} \
      ~{if defined(expected_max_length) then ("-j " +  '"' + expected_max_length + '"') else ""} \
      ~{if defined(bonus_tribases_match) then ("-b " +  '"' + bonus_tribases_match + '"') else ""} \
      ~{if defined(match_score) then ("-M " +  '"' + match_score + '"') else ""} \
      ~{if defined(mismatch_score) then ("-X " +  '"' + mismatch_score + '"') else ""} \
      ~{if defined(insertion_score) then ("-I " +  '"' + insertion_score + '"') else ""} \
      ~{if defined(deletion_score) then ("-D " +  '"' + deletion_score + '"') else ""} \
      ~{if defined(homopolymer_merge_score) then ("-H " +  '"' + homopolymer_merge_score + '"') else ""} \
      ~{if defined(bandwidth_poa_program) then ("-B " +  '"' + bandwidth_poa_program + '"') else ""} \
      ~{if defined(window_size_middle) then ("-W " +  '"' + window_size_middle + '"') else ""} \
      ~{if defined(min_size_aligned) then ("-w " +  '"' + min_size_aligned + '"') else ""} \
      ~{true="-A" false="" abort_when_read} \
      ~{if defined(shuffle_mode_shuffle) then ("-S " +  '"' + shuffle_mode_shuffle + '"') else ""} \
      ~{if defined(realignment_bandwidth_disable) then ("-R " +  '"' + realignment_bandwidth_disable + '"') else ""} \
      ~{if defined(consensus_mode_runlength) then ("-c " +  '"' + consensus_mode_runlength + '"') else ""} \
      ~{if defined(min_count_call) then ("-C " +  '"' + min_count_call + '"') else ""} \
      ~{if defined(min_frequency_call) then ("-F " +  '"' + min_frequency_call + '"') else ""} \
      ~{if defined(max_number_reads) then ("-N " +  '"' + max_number_reads + '"') else ""} \
      ~{if defined(presets_samsr_contigs) then ("-x " +  '"' + presets_samsr_contigs + '"') else ""} \
      ~{true="-q" false="" quiet} \
      ~{true="-v" false="" verbose} \
      ~{true="-V" false="" print_version_information}
  >>>
  parameter_meta {
    number_of_threads: "Number of threads, [4]"
    reference_sequences_sam: "Reference sequences for SAM input, will invoke sorted-SAM input mode"
    xored_flags_handle: "XORed flags to handle SAM input. [0] 0x1: Only process reference regions present in/between SAM alignments 0x2: Don't fileter secondary/supplementary SAM records with flag (0x100 | 0x800)"
    force_use_mode: "Force to use reference mode"
    similar_translate_sam: "Similar with -d, but translate SAM into wtdbg layout file"
    input_files_sorted: "Input file(s) *.ctg.lay from wtdbg, +, [STDIN] Or sorted SAM files when having -d/-p"
    output_files: "Output files, [STDOUT]"
    force_overwrite: "Force overwrite"
    expected_max_length: "Expected max length of node, or say the overlap length of two adjacent units in layout file, [1500] bp overlap will be default to 1500(or 150 for sam-sr) when having -d/-p, block size will be 2.5 * overlap"
    bonus_tribases_match: "Bonus for tri-bases match, [0]"
    match_score: "Match score, [2]"
    mismatch_score: "Mismatch score, [-5]"
    insertion_score: "Insertion score, [-2]"
    deletion_score: "Deletion score, [-4]"
    homopolymer_merge_score: "Homopolymer merge score used in dp-call-cns mode, [-3]"
    bandwidth_poa_program: "Bandwidth in POA, [Wmin[,Wmax[,mat_rate]]], mat_rate = matched_bases/total_bases [64,1024,0.92] Program will double bandwidth from Wmin to Wmax when mat_rate is lower than setting"
    window_size_middle: "Window size in the middle of the first read for fast align remaining reads, [200] If $W is negative, will disable fast align, but use the abs($W) as Band align score cutoff"
    min_size_aligned: "Min size of aligned size in window, [$W * 0.5]"
    abort_when_read: "Abort TriPOA when any read cannot be fast aligned, then try POA"
    shuffle_mode_shuffle: "Shuffle mode, 0: don't shuffle reads, 1: by shared kmers, 2: subsampling. [1]"
    realignment_bandwidth_disable: "Realignment bandwidth, 0: disable, [16]"
    consensus_mode_runlength: "Consensus mode: 0, run-length; 1, dp-call-cns, [0]"
    min_count_call: "Min count of bases to call a consensus base, [3]"
    min_frequency_call: "Min frequency of non-gap bases to call a consensus base, [0.5]"
    max_number_reads: "Max number of reads in PO-MSA [20] Keep in mind that I am not going to generate high accurate consensus sequences here"
    presets_samsr_contigs: "Presets, [] sam-sr: polishs contigs from short reads mapping, accepts sorted SAM files shorted for '-j 50 -W 0 -R 0 -b 1 -c 1 -N 50 -rS 2'"
    quiet: "Quiet"
    verbose: "Verbose"
    print_version_information: "Print version information and then exit"
  }
}