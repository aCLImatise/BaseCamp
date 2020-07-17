version 1.0

task HPC.daligner {
  input {
    Boolean? look_kmers_averlapping
    Boolean? ignore_kmers_occur
    Boolean? use_only_gb
    Boolean? look_alignments_e
    Boolean? look_alignments_l
    Boolean? use_s_trace
    Boolean? hgap_option_align
    Boolean? use_t_threads
    Boolean? first_level_sort
    Boolean? soft_mask_blocks
    Boolean? run_commands_script
    Boolean? instruct_lasort_lamerge
    Boolean? put_las_files
    Boolean? block_compares_daligner
    Boolean? place_script_bundles
    Boolean? vad
  }
  command <<<
    HPC.daligner \
      ~{true="-w" false="" look_kmers_averlapping} \
      ~{true="-t" false="" ignore_kmers_occur} \
      ~{true="-M" false="" use_only_gb} \
      ~{true="-e" false="" look_alignments_e} \
      ~{true="-l" false="" look_alignments_l} \
      ~{true="-s" false="" use_s_trace} \
      ~{true="-H" false="" hgap_option_align} \
      ~{true="-T" false="" use_t_threads} \
      ~{true="-P" false="" first_level_sort} \
      ~{true="-m" false="" soft_mask_blocks} \
      ~{true="-v" false="" run_commands_script} \
      ~{true="-a" false="" instruct_lasort_lamerge} \
      ~{true="-d" false="" put_las_files} \
      ~{true="-B" false="" block_compares_daligner} \
      ~{true="-f" false="" place_script_bundles} \
      ~{true="-vad" false="" vad}
  >>>
  parameter_meta {
    look_kmers_averlapping: ": Look for k-mers in averlapping bands of size 2^-w."
    ignore_kmers_occur: ": Ignore k-mers that occur >= -t times in a block."
    use_only_gb: ": Use only -M GB of memory by ignoring most frequent k-mers."
    look_alignments_e: ": Look for alignments with -e percent similarity."
    look_alignments_l: ": Look for alignments of length >= -l."
    use_s_trace: ": Use -s as the trace point spacing for encoding alignments."
    hgap_option_align: ": HGAP option: align only target reads of length >= -H."
    use_t_threads: ": Use -T threads."
    first_level_sort: ": Do first level sort and merge in directory -P."
    soft_mask_blocks: ": Soft mask the blocks with the specified mask."
    run_commands_script: ": Run all commands in script in verbose mode."
    instruct_lasort_lamerge: ": Instruct LAsort & LAmerge to sort only on (a,ab)."
    put_las_files: ": Put .las files for each target block in a sub-directory"
    block_compares_daligner: ": # of block compares per daligner job"
    place_script_bundles: ": Place script bundles in separate files with prefix <name>"
    vad: ""
  }
}