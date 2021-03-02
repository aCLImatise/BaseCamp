version 1.0

task HPCTANmask {
  input {
    Boolean? kmer_size_be
    Boolean? look_kmers_averlapping
    Boolean? look_percent_similarity
    Boolean? look_alignments_length
    Boolean? use_s_trace
    Boolean? use_t_threads
    Boolean? first_level_sort
    Boolean? use_name_tandem
    Boolean? run_commands_script
    Boolean? place_script_bundles
  }
  command <<<
    HPC_TANmask \
      ~{if (kmer_size_be) then "-k" else ""} \
      ~{if (look_kmers_averlapping) then "-w" else ""} \
      ~{if (look_percent_similarity) then "-e" else ""} \
      ~{if (look_alignments_length) then "-l" else ""} \
      ~{if (use_s_trace) then "-s" else ""} \
      ~{if (use_t_threads) then "-T" else ""} \
      ~{if (first_level_sort) then "-P" else ""} \
      ~{if (use_name_tandem) then "-n" else ""} \
      ~{if (run_commands_script) then "-v" else ""} \
      ~{if (place_script_bundles) then "-f" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kmer_size_be: ": k-mer size (must be <= 32)."
    look_kmers_averlapping: ": Look for k-mers in averlapping bands of size 2^-w."
    look_percent_similarity: ": Look for alignments with -e percent similarity."
    look_alignments_length: ": Look for alignments of length >= -l."
    use_s_trace: ": Use -s as the trace point spacing for encoding alignments."
    use_t_threads: ": Use -T threads."
    first_level_sort: ": Do first level sort and merge in directory -P."
    use_name_tandem: ": use this name for the tandem mask track."
    run_commands_script: ": Run all commands in script in verbose mode."
    place_script_bundles: ": Place script bundles in separate files with prefix <name>"
  }
  output {
    File out_stdout = stdout()
  }
}