version 1.0

task Amrfinder.pl {
  input {
    String? help_text
    String? version_information
    String? amrfinder_database
    String? directory_containing_database
    File? tabfile_output_file
    String? mode_print_messages
    String? aminoacid_sequences_search
    String? gff_file_indicating
    String? genomic_sequence_search
    String? minimum_proportion_identical
    String? minimum_coverage_reference
    String? translation_table_blastx
  }
  command <<<
    amrfinder.pl \
      ~{if defined(help_text) then ("-h " +  '"' + help_text + '"') else ""} \
      ~{if defined(version_information) then ("-v " +  '"' + version_information + '"') else ""} \
      ~{if defined(amrfinder_database) then ("-U " +  '"' + amrfinder_database + '"') else ""} \
      ~{if defined(directory_containing_database) then ("-d " +  '"' + directory_containing_database + '"') else ""} \
      ~{if defined(tabfile_output_file) then ("-o " +  '"' + tabfile_output_file + '"') else ""} \
      ~{if defined(mode_print_messages) then ("-q " +  '"' + mode_print_messages + '"') else ""} \
      ~{if defined(aminoacid_sequences_search) then ("-p " +  '"' + aminoacid_sequences_search + '"') else ""} \
      ~{if defined(gff_file_indicating) then ("-g " +  '"' + gff_file_indicating + '"') else ""} \
      ~{if defined(genomic_sequence_search) then ("-n " +  '"' + genomic_sequence_search + '"') else ""} \
      ~{if defined(minimum_proportion_identical) then ("-i " +  '"' + minimum_proportion_identical + '"') else ""} \
      ~{if defined(minimum_coverage_reference) then ("-c " +  '"' + minimum_coverage_reference + '"') else ""} \
      ~{if defined(translation_table_blastx) then ("-t " +  '"' + translation_table_blastx + '"') else ""}
  >>>
  parameter_meta {
    help_text: "help text"
    version_information: "version information "
    amrfinder_database: "AMRFinder database"
    directory_containing_database: "Directory containing the AMR database"
    tabfile_output_file: "tabfile output to this file instead of STDOUT"
    mode_print_messages: "mode (don't print status messages to STDERR)"
    aminoacid_sequences_search: "Amino-acid sequences to search using BLASTP and HMMER"
    gff_file_indicating: "GFF file indicating genomic location for proteins in -p <protein>"
    genomic_sequence_search: "genomic sequence to search using BLASTX"
    minimum_proportion_identical: "Minimum proportion identical translated AA residues"
    minimum_coverage_reference: "Minimum coverage of reference protein sequence"
    translation_table_blastx: "Translation table for blastx"
  }
}