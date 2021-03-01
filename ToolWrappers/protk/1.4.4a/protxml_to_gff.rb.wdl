version 1.0

task ProtxmlToGffrb {
  input {
    File? explicitly_named_output
    Boolean? debug
    File? database
    File? coords_file
    Boolean? stack_charge_states
    Float? threshold
    Float? prot_threshold
    String? gff_id_regex
    String? genome_id_regex
    String? ignore_regex
    Boolean? include_mods
    String proteins_dot
    String prot_xml
  }
  command <<<
    protxml_to_gff_rb \
      ~{proteins_dot} \
      ~{prot_xml} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(coords_file) then ("--coords-file " +  '"' + coords_file + '"') else ""} \
      ~{if (stack_charge_states) then "--stack-charge-states" else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(prot_threshold) then ("--prot-threshold " +  '"' + prot_threshold + '"') else ""} \
      ~{if defined(gff_id_regex) then ("--gff-idregex " +  '"' + gff_id_regex + '"') else ""} \
      ~{if defined(genome_id_regex) then ("--genome-idregex " +  '"' + genome_id_regex + '"') else ""} \
      ~{if defined(ignore_regex) then ("--ignore-regex " +  '"' + ignore_regex + '"') else ""} \
      ~{if (include_mods) then "--include-mods" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    explicitly_named_output: "An explicitly named output file."
    debug: "Run in debug mode [false]"
    database: "Database used for ms/ms searches (Fasta Format)"
    coords_file: "A file containing genomic coordinates for predicted proteins and/or 6-frame translations"
    stack_charge_states: "Different peptide charge states get separate gff entries [false]"
    threshold: "Peptide Probability Threshold (Default 0.95) [0.95]"
    prot_threshold: "Protein Probability Threshold (Default 0.99) [0.99]"
    gff_id_regex: "Regex with capture group for parsing gff ids from protein ids"
    genome_id_regex: "Regex with capture group for parsing genomic ids from protein ids"
    ignore_regex: "Regex to match protein ids that we should ignore completely"
    include_mods: "Output gff entries for peptide modification sites [false]"
    proteins_dot: ""
    prot_xml: ""
  }
  output {
    File out_stdout = stdout()
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}