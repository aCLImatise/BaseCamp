version 1.0

task CreateSuperReadsForDirectoryperl {
  input {
    Int? length_kmer_use
    Int? size_when_running
    Int? number_run_jellyfish
    File? k_unit_igs_file
    File? mean_and_stdev_by_prefix_file
    Int? num_stdev_s_allowed
    Int? m_ku_disr
    Int? min_reads_in_super_read
    File? merged_unit_ig_data_prefix
    Boolean? output_join_result_for_each_join
    String? stop_after
    Boolean? no_clean
    Boolean? mike_debug
    Boolean? jump_library_reads
    Boolean? keep_k_unit_igs_in_super_read_names
    Boolean? extend_super_reads
    Boolean? close_gaps
    Boolean? time
  }
  command <<<
    createSuperReadsForDirectory_perl \
      ~{if defined(length_kmer_use) then ("-l " +  '"' + length_kmer_use + '"') else ""} \
      ~{if defined(size_when_running) then ("-s " +  '"' + size_when_running + '"') else ""} \
      ~{if defined(number_run_jellyfish) then ("-t " +  '"' + number_run_jellyfish + '"') else ""} \
      ~{if defined(k_unit_igs_file) then ("-kunitigsfile " +  '"' + k_unit_igs_file + '"') else ""} \
      ~{if defined(mean_and_stdev_by_prefix_file) then ("-mean-and-stdev-by-prefix-file " +  '"' + mean_and_stdev_by_prefix_file + '"') else ""} \
      ~{if defined(num_stdev_s_allowed) then ("-num-stdevs-allowed " +  '"' + num_stdev_s_allowed + '"') else ""} \
      ~{if defined(m_ku_disr) then ("-mkudisr " +  '"' + m_ku_disr + '"') else ""} \
      ~{if defined(min_reads_in_super_read) then ("-minreadsinsuperread " +  '"' + min_reads_in_super_read + '"') else ""} \
      ~{if defined(merged_unit_ig_data_prefix) then ("-merged-unitig-data-prefix " +  '"' + merged_unit_ig_data_prefix + '"') else ""} \
      ~{if (output_join_result_for_each_join) then "-output-join-result-for-each-join" else ""} \
      ~{if defined(stop_after) then ("--stopAfter " +  '"' + stop_after + '"') else ""} \
      ~{if (no_clean) then "-noclean" else ""} \
      ~{if (mike_debug) then "-mikedebug" else ""} \
      ~{if (jump_library_reads) then "-jumplibraryreads" else ""} \
      ~{if (keep_k_unit_igs_in_super_read_names) then "-keep-kunitigs-in-superread-names" else ""} \
      ~{if (extend_super_reads) then "-extend-super-reads" else ""} \
      ~{if (close_gaps) then "-closegaps" else ""} \
      ~{if (time) then "-time" else ""}
  >>>
  parameter_meta {
    length_kmer_use: ": the length of the k-mer to use for the calculations (31)"
    size_when_running: ": the size of the table when running jellyfish (2,000,000,000)"
    number_run_jellyfish: ": the number of processors to run jellyfish and create_k_unitigs (16)"
    k_unit_igs_file: ": a user-given k-unitigs file; otherwise we calculate"
    mean_and_stdev_by_prefix_file: ": a file giving mate info about each\\nlibrary. Each line is the 2-letter prefix for the reads\\nin the library followed by its mean and stdev. This\\nfile is mandatory unless -jumplibraryreads is specified"
    num_stdev_s_allowed: ": max stdevs allowed for joinKUnitigs (5)"
    m_ku_disr: ": max base diffs between overlapping k-unitigs in super-reads (0)"
    min_reads_in_super_read: ": super-reads containing fewer than numReads\\nreads will be eliminated (2)"
    merged_unit_ig_data_prefix: ": the prefix for the filenames relating to\\nmerged unitig data. We assume that the k-unitig sequence\\nis in  'prefix'.fasta, and the map file from orig to\\nmerged k-unitigs is in 'prefix'.map."
    output_join_result_for_each_join: ": Now does nothing; kept so other programs\\nwon't break"
    stop_after: ": Stop the run after one of the following \\\"target\\\" names:\\ncreateLengthStatisticsFiles\\ncreateKUnitigHashTable\\naddMissingMates\\nfindReadKUnitigMatches\\ncreateLengthStatisticsForMergedKUnitigsFiles\\ncreateKUnitigMaxOverlaps\\njoinKUnitigs\\ngetSuperReadInsertCounts\\ncreateFastaSuperReadSequences\\nreduceSuperReads\\ncreateFinalReadPlacementFile\\ncreateFinalSuperReadFastaSequences"
    no_clean: ": don't clean up the files afterwards"
    mike_debug: ": don't kill off intermediate results"
    jump_library_reads: ": we are generating for jump-library reads; a k-unitigs\\nfile must be specified"
    keep_k_unit_igs_in_super_read_names: ": Use the super-read names which have the\\nk-unitig numbers in them; otherwise use numeric names\\n(lower numbers correspond to shorter super-reads)"
    extend_super_reads: ": extend the super-reads if the ending unitigs have\\nunique continuations"
    close_gaps: ": this is from a closeGaps.perl run, so some filesizes may be 0"
    time: ": time the commands"
  }
  output {
    File out_stdout = stdout()
  }
}