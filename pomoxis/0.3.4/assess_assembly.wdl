version 1.0

task AssessAssembly {
  input {
    Boolean? reference_should_fasta
    Boolean? fastqa_input_assembly
    Boolean? chunk_size_input
    Boolean? catalogue_errors
    Boolean? count_homopolymers
    Boolean? alignment_threads_default
    Boolean? output_file_prefix
    Boolean? trim_consensus_primary
    Boolean? bed_file_assess
    Boolean? list_indels_default
    Boolean? use_l_option
  }
  command <<<
    assess_assembly \
      ~{true="-r" false="" reference_should_fasta} \
      ~{true="-i" false="" fastqa_input_assembly} \
      ~{true="-c" false="" chunk_size_input} \
      ~{true="-C" false="" catalogue_errors} \
      ~{true="-H" false="" count_homopolymers} \
      ~{true="-t" false="" alignment_threads_default} \
      ~{true="-p" false="" output_file_prefix} \
      ~{true="-T" false="" trim_consensus_primary} \
      ~{true="-b" false="" bed_file_assess} \
      ~{true="-l" false="" list_indels_default} \
      ~{true="-e" false="" use_l_option}
  >>>
  parameter_meta {
    reference_should_fasta: "reference, should be a fasta file. If correspondng minimap2 indices do not exist they will be created. (required)."
    fastqa_input_assembly: "fastq/a input assembly (required)."
    chunk_size_input: "chunk size. Input reads/contigs will be broken into chunks prior to alignment, 0 will not chunk (default 100000)."
    catalogue_errors: "catalogue errors."
    count_homopolymers: "count homopolymers. "
    alignment_threads_default: "alignment threads (default: 1)."
    output_file_prefix: "output file prefix (default: assm)."
    trim_consensus_primary: "trim consensus to primary alignments of truth to assembly."
    bed_file_assess: ".bed file of reference regions to assess."
    list_indels_default: "list all indels at least this long (default: 100).  "
    use_l_option: "use with -l option to create a .bed file to exclude indels. If the -b option is used, the two bed files will be combined."
  }
}