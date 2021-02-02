version 1.0

task Kissreads {
  input {
    Int? will_use_seeds
    String? read_can_mapped
    Int? sequence_covered_reads
    Int? maximal_number_allowed
    File? write_readcoherent_outputs
    File? write_unreadcoherent_outputs
    File? input_file_tocheckfasta_kissnp
    File? input_file_tocheckfasta_intl
    Int? int_value_heuristic
    Int? number_threads_also
    File? write_file_mapped
    String? mode
    File? coherent_events_standard
    String? this_message_exit
  }
  command <<<
    kissreads \
      ~{if defined(will_use_seeds) then ("-k " +  '"' + will_use_seeds + '"') else ""} \
      ~{if defined(read_can_mapped) then ("-O " +  '"' + read_can_mapped + '"') else ""} \
      ~{if defined(sequence_covered_reads) then ("-c " +  '"' + sequence_covered_reads + '"') else ""} \
      ~{if defined(maximal_number_allowed) then ("-d " +  '"' + maximal_number_allowed + '"') else ""} \
      ~{if defined(write_readcoherent_outputs) then ("-o " +  '"' + write_readcoherent_outputs + '"') else ""} \
      ~{if defined(write_unreadcoherent_outputs) then ("-u " +  '"' + write_unreadcoherent_outputs + '"') else ""} \
      ~{if defined(input_file_tocheckfasta_kissnp) then ("-n " +  '"' + input_file_tocheckfasta_kissnp + '"') else ""} \
      ~{if defined(input_file_tocheckfasta_intl) then ("-I " +  '"' + input_file_tocheckfasta_intl + '"') else ""} \
      ~{if defined(int_value_heuristic) then ("-i " +  '"' + int_value_heuristic + '"') else ""} \
      ~{if defined(number_threads_also) then ("-t " +  '"' + number_threads_also + '"') else ""} \
      ~{if defined(write_file_mapped) then ("-m " +  '"' + write_file_mapped + '"') else ""} \
      ~{if defined(mode) then ("-s " +  '"' + mode + '"') else ""} \
      ~{if defined(coherent_events_standard) then ("-f " +  '"' + coherent_events_standard + '"') else ""} \
      ~{if defined(this_message_exit) then ("-h " +  '"' + this_message_exit + '"') else ""}
  >>>
  parameter_meta {
    will_use_seeds: ": will use seeds of length size_seed. Default: 25."
    read_can_mapped: ": a read can be mapped if its overlap is a least \\\"minimal_read_overlap\\\". Default: k"
    sequence_covered_reads: ": a sequence is covered by at least min_coverage coherent reads. Default: 2"
    maximal_number_allowed: ": Maximal number of substitutions authorized between a read and a fragment. Note that no substitution is allowed on the central position while anaylizing the kissnp output. Default: 1."
    write_readcoherent_outputs: ": write read-coherent outputs. Default: standard output"
    write_unreadcoherent_outputs: ": write unread-coherent outputs. Default: standard output"
    input_file_tocheckfasta_kissnp: "input file (toCheck.fasta) is a kissnp output (incompatible with -I option)\\nin this case: 1/ only the upper characters are considered (no mapping done on the extensions) and 2/ the central position (where the SNP occurs) is strictly mapped, no subsitution is authorized on this position."
    input_file_tocheckfasta_intl: "input file (toCheck.fasta) is an Intl output (incompatible with -n option)"
    int_value_heuristic: "(int value). This is a heuristic for limiting the memory footprint. Instead of indexing each kmer of the sequences contained into the toCheck.fasta, kissreads indexes kmers occurring each \\\"index_stride\\\" position. Default = 1 (no heuristic)"
    number_threads_also: "number of threads (also limited by number of input files)"
    write_file_mapped: ", write a file of reads mapped to sequences in file align_file"
    mode: "mode"
    coherent_events_standard: "coherent events in a standard fasta file format"
    this_message_exit: "this message and exit"
  }
  output {
    File out_stdout = stdout()
  }
}