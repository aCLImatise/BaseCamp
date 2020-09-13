version 1.0

task HPCTANmask {
  input {
    Boolean? kmer_size_must
    Boolean? look_kmers_w
    Boolean? look_alignments_e
    Boolean? look_alignments_l
    Boolean? use_s_spacing
    Boolean? use_t_threads
    Boolean? first_level_sort
    Boolean? use_name_tandem
    Boolean? run_commands_script
    Boolean? place_script_bundles
  }
  command <<<
    HPC_TANmask \
      ~{if (kmer_size_must) then "-k" else ""} \
      ~{if (look_kmers_w) then "-w" else ""} \
      ~{if (look_alignments_e) then "-e" else ""} \
      ~{if (look_alignments_l) then "-l" else ""} \
      ~{if (use_s_spacing) then "-s" else ""} \
      ~{if (use_t_threads) then "-T" else ""} \
      ~{if (first_level_sort) then "-P" else ""} \
      ~{if (use_name_tandem) then "-n" else ""} \
      ~{if (run_commands_script) then "-v" else ""} \
      ~{if (place_script_bundles) then "-f" else ""}
  >>>
  parameter_meta {
    kmer_size_must: ": k-mer size (must be <= 32)."
    look_kmers_w: ": Look for k-mers in averlapping bands of size 2^-w."
    look_alignments_e: ": Look for alignments with -e percent similarity."
    look_alignments_l: ": Look for alignments of length >= -l."
    use_s_spacing: ": Use -s as the trace point spacing for encoding alignments."
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