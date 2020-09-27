version 1.0

task AssessAssembly {
  input {
    Boolean? reference_should_fasta
    Boolean? fastqa_input_assembly
    Boolean? chunk_size_input
    Boolean? catalogue_errors
    Boolean? count_homopolymers
    Boolean? alignment_threads_default
    File? output_file_prefix
    Boolean? trim_consensus_primary
    Boolean? file_reference_assess
    Boolean? list_indels_default
    Boolean? use_l_option
  }
  command <<<
    assess_assembly \
      ~{if (reference_should_fasta) then "-r" else ""} \
      ~{if (fastqa_input_assembly) then "-i" else ""} \
      ~{if (chunk_size_input) then "-c" else ""} \
      ~{if (catalogue_errors) then "-C" else ""} \
      ~{if (count_homopolymers) then "-H" else ""} \
      ~{if (alignment_threads_default) then "-t" else ""} \
      ~{if (output_file_prefix) then "-p" else ""} \
      ~{if (trim_consensus_primary) then "-T" else ""} \
      ~{if (file_reference_assess) then "-b" else ""} \
      ~{if (list_indels_default) then "-l" else ""} \
      ~{if (use_l_option) then "-e" else ""}
  >>>
  parameter_meta {
    reference_should_fasta: "reference, should be a fasta file. If correspondng minimap2 indices\\ndo not exist they will be created. (required)."
    fastqa_input_assembly: "fastq/a input assembly (required)."
    chunk_size_input: "chunk size. Input reads/contigs will be broken into chunks\\nprior to alignment, 0 will not chunk (default 100000)."
    catalogue_errors: "catalogue errors."
    count_homopolymers: "count homopolymers."
    alignment_threads_default: "alignment threads (default: 1)."
    output_file_prefix: "output file prefix (default: assm)."
    trim_consensus_primary: "trim consensus to primary alignments of truth to assembly."
    file_reference_assess: ".bed file of reference regions to assess."
    list_indels_default: "list all indels at least this long (default: 100)."
    use_l_option: "use with -l option to create a .bed file to exclude indels. If the -b option is used, the two bed files will be combined."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_prefix = "${in_output_file_prefix}"
  }
}