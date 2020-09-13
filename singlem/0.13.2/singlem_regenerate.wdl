version 1.0

task SinglemRegenerate {
  input {
    File? input_single_m_package
    File? output_single_m_package
    String? e_uk_taxonomy
    Boolean? var_3
    File? type_strains_list_file
    Boolean? debug
    Boolean? quiet
    Boolean? full_help
    String? e_uk_sequences
    String? var_9
    String? input_taxonomy
    String _intermediatebacteriagraftmpackage
    String _inputtaxonomy_inputtaxonomy
  }
  command <<<
    singlem regenerate \
      ~{_intermediatebacteriagraftmpackage} \
      ~{_inputtaxonomy_inputtaxonomy} \
      ~{if defined(input_single_m_package) then ("--input_singlem_package " +  '"' + input_single_m_package + '"') else ""} \
      ~{if defined(output_single_m_package) then ("--output_singlem_package " +  '"' + output_single_m_package + '"') else ""} \
      ~{if defined(e_uk_taxonomy) then ("--euk_taxonomy " +  '"' + e_uk_taxonomy + '"') else ""} \
      ~{if (var_3) then "--intermediate_archaea_graftm_package" else ""} \
      ~{if defined(type_strains_list_file) then ("--type_strains_list_file " +  '"' + type_strains_list_file + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if defined(e_uk_sequences) then ("--euk_sequences " +  '"' + e_uk_sequences + '"') else ""} \
      ~{if defined(var_9) then ("--intermediate_bacteria_graftm_package " +  '"' + var_9 + '"') else ""} \
      ~{if defined(input_taxonomy) then ("--input_taxonomy " +  '"' + input_taxonomy + '"') else ""}
  >>>
  parameter_meta {
    input_single_m_package: ""
    output_single_m_package: ""
    e_uk_taxonomy: ""
    var_3: ""
    type_strains_list_file: ""
    debug: "output debug information"
    quiet: "only output errors"
    full_help: "display all help options"
    e_uk_sequences: ""
    var_9: ""
    input_taxonomy: ""
    _intermediatebacteriagraftmpackage: "--intermediate_bacteria_graftm_package"
    _inputtaxonomy_inputtaxonomy: "--input_taxonomy INPUT_TAXONOMY"
  }
  output {
    File out_stdout = stdout()
  }
}