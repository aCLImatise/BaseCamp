version 1.0

task SinglemRegenerate {
  input {
    File? input_single_m_package
    Boolean? full_help
    Boolean? quiet
    Boolean? debug
  }
  command <<<
    singlem regenerate \
      ~{if defined(input_single_m_package) then ("--input_singlem_package " +  '"' + input_single_m_package + '"') else ""} \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    input_single_m_package: "--output_singlem_package PATH --working_directory\\nWORKING_DIRECTORY --euk_sequences EUK_SEQUENCES\\n--euk_taxonomy EUK_TAXONOMY\\n--intermediate_archaea_graftm_package\\nINTERMEDIATE_ARCHAEA_GRAFTM_PACKAGE\\n--intermediate_bacteria_graftm_package\\nINTERMEDIATE_BACTERIA_GRAFTM_PACKAGE\\n--input_taxonomy INPUT_TAXONOMY\\n--type_strains_list_file TYPE_STRAINS_LIST_FILE"
    full_help: ""
    quiet: ""
    debug: ""
  }
  output {
    File out_stdout = stdout()
  }
}