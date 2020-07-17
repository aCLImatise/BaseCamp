version 1.0

task MiniAlign {
  input {
    Boolean? reference_should_fasta
    Boolean? fastqa_input_reads
    Boolean? split_index_num
    Boolean? force_recreation_index
    Boolean? aggressively_extend_sets
    Boolean? filter_only_primary
    Boolean? filter_alignments_primary
    Boolean? sort_bam_read
    Boolean? chunk_size_input
    Boolean? alignment_threads_default
    Boolean? output_file_prefix
    Boolean? fill_md_tag
    Boolean? fill_cslong_tag
    Boolean? only_create_files
    Boolean? log_commands_running
    Boolean? match_score
    Boolean? mismatch_score
    Boolean? open_gat_penalty
    Boolean? extend_gap_penalty
  }
  command <<<
    mini_align \
      ~{true="-r" false="" reference_should_fasta} \
      ~{true="-i" false="" fastqa_input_reads} \
      ~{true="-I" false="" split_index_num} \
      ~{true="-f" false="" force_recreation_index} \
      ~{true="-a" false="" aggressively_extend_sets} \
      ~{true="-P" false="" filter_only_primary} \
      ~{true="-A" false="" filter_alignments_primary} \
      ~{true="-n" false="" sort_bam_read} \
      ~{true="-c" false="" chunk_size_input} \
      ~{true="-t" false="" alignment_threads_default} \
      ~{true="-p" false="" output_file_prefix} \
      ~{true="-m" false="" fill_md_tag} \
      ~{true="-s" false="" fill_cslong_tag} \
      ~{true="-X" false="" only_create_files} \
      ~{true="-x" false="" log_commands_running} \
      ~{true="-M" false="" match_score} \
      ~{true="-S" false="" mismatch_score} \
      ~{true="-O" false="" open_gat_penalty} \
      ~{true="-E" false="" extend_gap_penalty}
  >>>
  parameter_meta {
    reference_should_fasta: "reference, should be a fasta file. If correspondng minimap indices do not exist they will be created. (required)."
    fastqa_input_reads: "fastq/a input reads (required)."
    split_index_num: "split index every ~NUM input bases (default: 16G, this is larger than the usual minimap2 default)."
    force_recreation_index: "force recreation of index file."
    aggressively_extend_sets: "aggressively extend gaps (sets -A1 -B2 -O2 -E1 for minimap2)."
    filter_only_primary: "filter to only primary alignments (i.e. run samtools view -F 2308). Deprecated: this filter is now default and can be disabled with -A."
    filter_alignments_primary: "do not filter alignments to primary alignments, output all."
    sort_bam_read: "sort bam by read name."
    chunk_size_input: "chunk size. Input reads/contigs will be broken into chunks prior to alignment."
    alignment_threads_default: "alignment threads (default: 1)."
    output_file_prefix: "output file prefix (default: reads)."
    fill_md_tag: "fill MD tag."
    fill_cslong_tag: "fill cs(=long) tag."
    only_create_files: "only create reference index files."
    log_commands_running: "log all commands before running."
    match_score: "match score "
    mismatch_score: "mismatch score"
    open_gat_penalty: "open gat penalty"
    extend_gap_penalty: "extend gap penalty."
  }
}