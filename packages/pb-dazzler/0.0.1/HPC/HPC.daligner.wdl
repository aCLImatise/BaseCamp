version 1.0

task HPCdaligner {
  input {
    Boolean? kmer_size_must
    Boolean? look_kmers_w
    Boolean? ignore_kmers_occur
    Boolean? use_only_gb
    Boolean? look_alignments_e
    Boolean? look_alignments_l
    Boolean? use_s_spacing
    Boolean? hgap_option_align
    Boolean? use_t_threads
    Boolean? first_level_sort
    Boolean? soft_mask_blocks
    Boolean? atgc_biased_counts
    Boolean? run_commands_script
    Boolean? instruct_lasort_lamerge
    Boolean? put_las_files
    Boolean? block_compares_daligner
    Boolean? lass_merge_lamerge
    Boolean? place_script_bundles
    Boolean? v_bad
    Int? var_int
  }
  command <<<
    HPC_daligner \
      ~{var_int} \
      ~{if (kmer_size_must) then "-k" else ""} \
      ~{if (look_kmers_w) then "-w" else ""} \
      ~{if (ignore_kmers_occur) then "-t" else ""} \
      ~{if (use_only_gb) then "-M" else ""} \
      ~{if (look_alignments_e) then "-e" else ""} \
      ~{if (look_alignments_l) then "-l" else ""} \
      ~{if (use_s_spacing) then "-s" else ""} \
      ~{if (hgap_option_align) then "-H" else ""} \
      ~{if (use_t_threads) then "-T" else ""} \
      ~{if (first_level_sort) then "-P" else ""} \
      ~{if (soft_mask_blocks) then "-m" else ""} \
      ~{if (atgc_biased_counts) then "-b" else ""} \
      ~{if (run_commands_script) then "-v" else ""} \
      ~{if (instruct_lasort_lamerge) then "-a" else ""} \
      ~{if (put_las_files) then "-d" else ""} \
      ~{if (block_compares_daligner) then "-B" else ""} \
      ~{if (lass_merge_lamerge) then "-D" else ""} \
      ~{if (place_script_bundles) then "-f" else ""} \
      ~{if (v_bad) then "-vbad" else ""}
  >>>
  parameter_meta {
    kmer_size_must: ": k-mer size (must be <= 32)."
    look_kmers_w: ": Look for k-mers in averlapping bands of size 2^-w."
    ignore_kmers_occur: ": Ignore k-mers that occur >= -t times in a block."
    use_only_gb: ": Use only -M GB of memory by ignoring most frequent k-mers."
    look_alignments_e: ": Look for alignments with -e percent similarity."
    look_alignments_l: ": Look for alignments of length >= -l."
    use_s_spacing: ": Use -s as the trace point spacing for encoding alignments."
    hgap_option_align: ": HGAP option: align only target reads of length >= -H."
    use_t_threads: ": Use -T threads."
    first_level_sort: ": Do first level sort and merge in directory -P."
    soft_mask_blocks: ": Soft mask the blocks with the specified mask."
    atgc_biased_counts: ": For AT/GC biased data, compensate k-mer counts (deprecated)."
    run_commands_script: ": Run all commands in script in verbose mode."
    instruct_lasort_lamerge: ": Instruct LAsort & LAmerge to sort only on (a,ab)."
    put_las_files: ": Put .las files for each target block in a sub-directory"
    block_compares_daligner: ": # of block compares per daligner job"
    lass_merge_lamerge: ": # of .las's to merge per LAmerge job"
    place_script_bundles: ": Place script bundles in separate files with prefix <name>"
    v_bad: ""
    var_int: ""
  }
  output {
    File out_stdout = stdout()
  }
}