version 1.0

task HPCREPmask {
  input {
    Boolean? int_cint_readsdbdam
    Boolean? kmer_size_be
    Boolean? look_kmers_averlapping
    Boolean? ignore_kmers_occur
    Boolean? use_only_gb
    Boolean? look_percent_similarity
    Boolean? look_alignments_length
    Boolean? use_s_trace
    Boolean? use_t_threads
    Boolean? first_level_sort
    Boolean? soft_mask_blocks
    Boolean? atgc_biased_data
    Boolean? coverage_threshold_repeat
    Boolean? use_name_repeat
    Boolean? run_commands_script
    Boolean? put_files_target
    Boolean? block_compares_daligner
    Boolean? place_script_bundles
    Boolean? vbd
    Int? var_int
  }
  command <<<
    HPC_REPmask \
      ~{var_int} \
      ~{if (int_cint_readsdbdam) then "-g" else ""} \
      ~{if (kmer_size_be) then "-k" else ""} \
      ~{if (look_kmers_averlapping) then "-w" else ""} \
      ~{if (ignore_kmers_occur) then "-t" else ""} \
      ~{if (use_only_gb) then "-M" else ""} \
      ~{if (look_percent_similarity) then "-e" else ""} \
      ~{if (look_alignments_length) then "-l" else ""} \
      ~{if (use_s_trace) then "-s" else ""} \
      ~{if (use_t_threads) then "-T" else ""} \
      ~{if (first_level_sort) then "-P" else ""} \
      ~{if (soft_mask_blocks) then "-m" else ""} \
      ~{if (atgc_biased_data) then "-b" else ""} \
      ~{if (coverage_threshold_repeat) then "-c" else ""} \
      ~{if (use_name_repeat) then "-n" else ""} \
      ~{if (run_commands_script) then "-v" else ""} \
      ~{if (put_files_target) then "-d" else ""} \
      ~{if (block_compares_daligner) then "-B" else ""} \
      ~{if (place_script_bundles) then "-f" else ""} \
      ~{if (vbd) then "-vbd" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    int_cint_readsdbdam: "<int> -c<int> <reads:db|dam> [<block:int>[-<range:int>]"
    kmer_size_be: ": k-mer size (must be <= 32)."
    look_kmers_averlapping: ": Look for k-mers in averlapping bands of size 2^-w."
    ignore_kmers_occur: ": Ignore k-mers that occur >= -t times in a block."
    use_only_gb: ": Use only -M GB of memory by ignoring most frequent k-mers."
    look_percent_similarity: ": Look for alignments with -e percent similarity."
    look_alignments_length: ": Look for alignments of length >= -l."
    use_s_trace: ": Use -s as the trace point spacing for encoding alignments."
    use_t_threads: ": Use -T threads."
    first_level_sort: ": Do first level sort and merge in directory -P."
    soft_mask_blocks: ": Soft mask the blocks with the specified mask."
    atgc_biased_data: ": For AT/GC biased data, compensate k-mer counts (deprecated)."
    coverage_threshold_repeat: ": coverage threshold for repeat intervals."
    use_name_repeat: ": use this name for the repeat mask track."
    run_commands_script: ": Run all commands in script in verbose mode."
    put_files_target: ": Put .las files for each target block in a sub-directory"
    block_compares_daligner: ": # of block compares per daligner job"
    place_script_bundles: ": Place script bundles in separate files with prefix <name>"
    vbd: ""
    var_int: ""
  }
  output {
    File out_stdout = stdout()
  }
}