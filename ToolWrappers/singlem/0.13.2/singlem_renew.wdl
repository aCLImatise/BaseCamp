version 1.0

task SinglemRenew {
  input {
    Array[String] input_archive_otu_tables
    Boolean? full_help
    Boolean? quiet
    Boolean? debug
  }
  command <<<
    singlem renew \
      ~{if defined(input_archive_otu_tables) then ("--input_archive_otu_tables " +  '"' + input_archive_otu_tables + '"') else ""} \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    input_archive_otu_tables: "sequence_files) [sequence_file(s) ...]\\n[--reverse sequence_file(s) [sequence_file(s ...]]\\n[--otu_table filename] [--threads num_threads]\\n[--assignment_method {pplacer,diamond,diamond_example}]\\n[--output_extras] [--archive_otu_table filename]\\n[--working_directory directory]\\n[--working_directory_tmpdir] [--force]\\n[--output_jplace filename] [--evalue EVALUE]\\n[--min_orf_length length] [--restrict_read_length length]\\n[--filter_minimum_protein length]\\n[--filter_minimum_nucleotide length] [--include_inserts]\\n[--known_otu_tables KNOWN_OTU_TABLES [KNOWN_OTU_TABLES ...]]\\n[--singlem_packages SINGLEM_PACKAGES [SINGLEM_PACKAGES ...]]\\n[--no_assign_taxonomy] [--known_sequence_taxonomy FILE]"
    full_help: ""
    quiet: ""
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}