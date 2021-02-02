version 1.0

task Entrcmd {
  input {
    Boolean? initial_database_optionaldefault
    Boolean? boolean_expression_optional
    Boolean? commadelimited_list_uids
    Boolean? program_of_commands
    Boolean? display_status_report
    Boolean? produce_wwwhtml_formatted
    Boolean? www_output_use
    Boolean? www_output_forms
    Boolean? name_export_optional
    Boolean? commadelimited_list_import
    Boolean? produce_list_terms
    Boolean? taxonomy_lookup_optional
    Boolean? onthefly_neighboring_optional
    File? output_file_default
    Boolean? use_wwwstyle_encoding
    Boolean? sequences_id_repository
    Boolean? complexity_bioseq_bioseq
  }
  command <<<
    entrcmd \
      ~{if (initial_database_optionaldefault) then "-d" else ""} \
      ~{if (boolean_expression_optional) then "-e" else ""} \
      ~{if (commadelimited_list_uids) then "-u" else ""} \
      ~{if (program_of_commands) then "-p" else ""} \
      ~{if (display_status_report) then "-s" else ""} \
      ~{if (produce_wwwhtml_formatted) then "-w" else ""} \
      ~{if (www_output_use) then "-f" else ""} \
      ~{if (www_output_forms) then "-c" else ""} \
      ~{if (name_export_optional) then "-x" else ""} \
      ~{if (commadelimited_list_import) then "-i" else ""} \
      ~{if (produce_list_terms) then "-t" else ""} \
      ~{if (taxonomy_lookup_optional) then "-l" else ""} \
      ~{if (onthefly_neighboring_optional) then "-n" else ""} \
      ~{if (output_file_default) then "-o" else ""} \
      ~{if (use_wwwstyle_encoding) then "-g" else ""} \
      ~{if (sequences_id_repository) then "-r" else ""} \
      ~{if (complexity_bioseq_bioseq) then "-y" else ""}
  >>>
  parameter_meta {
    initial_database_optionaldefault: "Initial database [String]  Optional\\ndefault = m"
    boolean_expression_optional: "Boolean expression [String]  Optional"
    commadelimited_list_uids: "Comma-delimited list of UIDs [String]  Optional"
    program_of_commands: "Program of commands [String]"
    display_status_report: "Display status report [T/F]  Optional\\ndefault = F"
    produce_wwwhtml_formatted: "Produce WWW/HTML formatted output (recommended value is /htbin) [String]  Optional"
    www_output_use: "For WWW output, use Forms [T/F]  Optional\\ndefault = F"
    www_output_forms: "'Check' WWW output Forms [T/F]  Optional\\ndefault = F"
    name_export_optional: "Name of export file for named UID list [String]  Optional"
    commadelimited_list_import: "Comma-delimited list of files to import for named UID list [String]  Optional"
    produce_list_terms: "Produce a list of terms (term) [String]  Optional"
    taxonomy_lookup_optional: "Taxonomy lookup [String]  Optional"
    onthefly_neighboring_optional: "On-the-fly neighboring [File In]  Optional"
    output_file_default: "Output file [File Out]\\ndefault = stdout"
    use_wwwstyle_encoding: "Use WWW-style encoding for special input characters [T/F]  Optional\\ndefault = T"
    sequences_id_repository: "Get sequences from ID Repository [T/F]  Optional\\ndefault = F"
    complexity_bioseq_bioseq: "Complexity (1=bioseq only, 2=bioseq set, 3=nuc-prot set) [Integer]  Optional\\ndefault = 3\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_default = "${in_output_file_default}"
  }
}