version 1.0

task ClinvarTsvParseXml {
  input {
    Int? output_multi
    File? clin_var_xml
    String? genome_build
    File? output_single
    Int? max_rows
    String clin_var_tsv
    String parse_xml
  }
  command <<<
    clinvar_tsv parse_xml \
      ~{clin_var_tsv} \
      ~{parse_xml} \
      ~{if defined(output_multi) then ("--output-multi " +  '"' + output_multi + '"') else ""} \
      ~{if defined(clin_var_xml) then ("--clinvar-xml " +  '"' + clin_var_xml + '"') else ""} \
      ~{if defined(genome_build) then ("--genome-build " +  '"' + genome_build + '"') else ""} \
      ~{if defined(output_single) then ("--output-single " +  '"' + output_single + '"') else ""} \
      ~{if defined(max_rows) then ("--max-rows " +  '"' + max_rows + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_multi: "[--max-rows MAX_ROWS]"
    clin_var_xml: "Path to Clinvar XML file."
    genome_build: "The genome build this variant is for."
    output_single: "Output path for single TSV file."
    max_rows: "Maximal number of rows to write out; for debugging."
    clin_var_tsv: ""
    parse_xml: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_single = "${in_output_single}"
  }
}