version 1.0

task Amrfinderpl {
  input {
    String? h_slash_help
    String? v_slash_version
    String? us_lash_update_data
    Directory? d_slash_database
    File? oslash_output
    String? q_slash_quiet
    String? p_slash_protein
    String? genomic_sequence_search
    Int? minimum_proportion_identical
    Int? minimum_coverage_reference
    Int? translation_table_meaning
    String hmmer
  }
  command <<<
    amrfinder_pl \
      ~{hmmer} \
      ~{if defined(h_slash_help) then ("-h/--help " +  '"' + h_slash_help + '"') else ""} \
      ~{if defined(v_slash_version) then ("-v/--version " +  '"' + v_slash_version + '"') else ""} \
      ~{if defined(us_lash_update_data) then ("-U/--update_data " +  '"' + us_lash_update_data + '"') else ""} \
      ~{if defined(d_slash_database) then ("-d/--database " +  '"' + d_slash_database + '"') else ""} \
      ~{if defined(oslash_output) then ("-o/--output " +  '"' + oslash_output + '"') else ""} \
      ~{if defined(q_slash_quiet) then ("-q/--quiet " +  '"' + q_slash_quiet + '"') else ""} \
      ~{if defined(p_slash_protein) then ("-p/--protein " +  '"' + p_slash_protein + '"') else ""} \
      ~{if defined(genomic_sequence_search) then ("-n " +  '"' + genomic_sequence_search + '"') else ""} \
      ~{if defined(minimum_proportion_identical) then ("-i " +  '"' + minimum_proportion_identical + '"') else ""} \
      ~{if defined(minimum_coverage_reference) then ("-c " +  '"' + minimum_coverage_reference + '"') else ""} \
      ~{if defined(translation_table_meaning) then ("-t " +  '"' + translation_table_meaning + '"') else ""}
  >>>
  parameter_meta {
    h_slash_help: "help text"
    v_slash_version: "version information"
    us_lash_update_data: "AMRFinder database by downloading latest version\\nfrom the NCBI ftp site"
    d_slash_database: "Directory containing the AMR database"
    oslash_output: "tabfile output to this file instead of STDOUT"
    q_slash_quiet: "'t print status messages to STDERR"
    p_slash_protein: "Amino-acid sequences to search using BLASTP and"
    genomic_sequence_search: "genomic sequence to search using blastx"
    minimum_proportion_identical: "Minimum proportion identical translated AA residues"
    minimum_coverage_reference: "Minimum coverage of reference protein sequence for\\na \\\"BLASTX\\\" match vs. a \\\"PARTIALX\\\" match"
    translation_table_meaning: "Translation table for blastx, for options and their meaning see:\\nhttps://www.ncbi.nlm.nih.gov/Taxonomy/Utils/wprintgc.cgi\\n"
    hmmer: "-g <gff> GFF file indicating genomic location for proteins in -p <protein>"
  }
  output {
    File out_stdout = stdout()
    File out_oslash_output = "${in_oslash_output}"
  }
}