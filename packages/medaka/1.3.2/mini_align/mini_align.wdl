version 1.0

task MiniAlign {
  input {
    Boolean? reference_be_file
    Boolean? fastqa_input_reads
    Boolean? split_index_num
    Boolean? force_recreation_index
    Boolean? aggressively_extend_gaps
    Boolean? filter_only_primary
    Boolean? filter_alignments_output
    Boolean? sort_bam_read
    Boolean? chunk_size_input
    Boolean? alignment_threads_default
    File? output_file_prefix
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
      ~{if (reference_be_file) then "-r" else ""} \
      ~{if (fastqa_input_reads) then "-i" else ""} \
      ~{if (split_index_num) then "-I" else ""} \
      ~{if (force_recreation_index) then "-f" else ""} \
      ~{if (aggressively_extend_gaps) then "-a" else ""} \
      ~{if (filter_only_primary) then "-P" else ""} \
      ~{if (filter_alignments_output) then "-A" else ""} \
      ~{if (sort_bam_read) then "-n" else ""} \
      ~{if (chunk_size_input) then "-c" else ""} \
      ~{if (alignment_threads_default) then "-t" else ""} \
      ~{if (output_file_prefix) then "-p" else ""} \
      ~{if (fill_md_tag) then "-m" else ""} \
      ~{if (fill_cslong_tag) then "-s" else ""} \
      ~{if (only_create_files) then "-X" else ""} \
      ~{if (log_commands_running) then "-x" else ""} \
      ~{if (match_score) then "-M" else ""} \
      ~{if (mismatch_score) then "-S" else ""} \
      ~{if (open_gat_penalty) then "-O" else ""} \
      ~{if (extend_gap_penalty) then "-E" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.3.2--py38h130def0_0"
  }
  parameter_meta {
    reference_be_file: "reference, should be a fasta file. If correspondng minimap indices\\ndo not exist they will be created. (required)."
    fastqa_input_reads: "fastq/a input reads (required)."
    split_index_num: "split index every ~NUM input bases (default: 16G, this is larger\\nthan the usual minimap2 default)."
    force_recreation_index: "force recreation of index file."
    aggressively_extend_gaps: "aggressively extend gaps (sets -A1 -B2 -O2 -E1 for minimap2)."
    filter_only_primary: "filter to only primary alignments (i.e. run samtools view -F 2308).\\nDeprecated: this filter is now default and can be disabled with -A."
    filter_alignments_output: "do not filter alignments to primary alignments, output all."
    sort_bam_read: "sort bam by read name."
    chunk_size_input: "chunk size. Input reads/contigs will be broken into chunks\\nprior to alignment."
    alignment_threads_default: "alignment threads (default: 1)."
    output_file_prefix: "output file prefix (default: reads)."
    fill_md_tag: "fill MD tag."
    fill_cslong_tag: "fill cs(=long) tag."
    only_create_files: "only create reference index files."
    log_commands_running: "log all commands before running."
    match_score: "match score"
    mismatch_score: "mismatch score"
    open_gat_penalty: "open gat penalty"
    extend_gap_penalty: "extend gap penalty."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}