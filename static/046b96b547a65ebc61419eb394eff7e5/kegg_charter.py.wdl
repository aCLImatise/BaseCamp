version 1.0

task KeggCharterpy {
  input {
    File? f
    Directory? output_directory
    Boolean? tsv
    Directory? resources_directory
    String? metabolic_maps
    String? genomic_columns
    String? transcript_omic_columns
    String? tax_a_list
    Int? number_of_tax_a
    String? kegg_column
    String? ko_column
    String? ec_column
    Boolean? input_quantification
    String? input_taxonomy
    String? tax_a_column
    Boolean? resume
    File? tsv_excel_table
    Boolean? show_available_maps
  }
  command <<<
    kegg_charter_py \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if (tsv) then "--tsv" else ""} \
      ~{if defined(resources_directory) then ("--resources-directory " +  '"' + resources_directory + '"') else ""} \
      ~{if defined(metabolic_maps) then ("--metabolic-maps " +  '"' + metabolic_maps + '"') else ""} \
      ~{if defined(genomic_columns) then ("--genomic-columns " +  '"' + genomic_columns + '"') else ""} \
      ~{if defined(transcript_omic_columns) then ("--transcriptomic-columns " +  '"' + transcript_omic_columns + '"') else ""} \
      ~{if defined(tax_a_list) then ("--taxa-list " +  '"' + tax_a_list + '"') else ""} \
      ~{if defined(number_of_tax_a) then ("--number-of-taxa " +  '"' + number_of_tax_a + '"') else ""} \
      ~{if defined(kegg_column) then ("--kegg-column " +  '"' + kegg_column + '"') else ""} \
      ~{if defined(ko_column) then ("--ko-column " +  '"' + ko_column + '"') else ""} \
      ~{if defined(ec_column) then ("--ec-column " +  '"' + ec_column + '"') else ""} \
      ~{if (input_quantification) then "--input-quantification" else ""} \
      ~{if defined(input_taxonomy) then ("--input-taxonomy " +  '"' + input_taxonomy + '"') else ""} \
      ~{if defined(tax_a_column) then ("--taxa-column " +  '"' + tax_a_column + '"') else ""} \
      ~{if (resume) then "--resume" else ""} \
      ~{if defined(tsv_excel_table) then ("--file " +  '"' + tsv_excel_table + '"') else ""} \
      ~{if (show_available_maps) then "--show-available-maps" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/keggcharter:0.2.3--0"
  }
  parameter_meta {
    f: "[--show-available-maps]"
    output_directory: "Output directory"
    tsv: "Results will be outputed in TSV format (and not\\nEXCEL)."
    resources_directory: "Directory for storing KGML and CSV files."
    metabolic_maps: "IDs of metabolic maps to output"
    genomic_columns: "Names of columns with genomic identification"
    transcript_omic_columns: "Names of columns with transcriptomics quantification"
    tax_a_list: "List of taxa to represent in genomic potential charts\\n(comma separated)"
    number_of_tax_a: "Number of taxa to represent in genomic potential\\ncharts (comma separated)"
    kegg_column: "Column with KEGG IDs."
    ko_column: "Column with KOs."
    ec_column: "Column with EC numbers."
    input_quantification: "If input table has no quantification, will create a\\nmock quantification column"
    input_taxonomy: "If no taxonomy column exists and there is only one\\ntaxon in question."
    tax_a_column: "Column with the taxa designations to represent with\\nKEGGChart"
    resume: "Data inputed has already been analyzed by KEGGCharter."
    tsv_excel_table: "TSV or EXCEL table with information to chart"
    show_available_maps: "Outputs KEGG maps IDs and descriptions to the console\\n(so you may pick the ones you want!)"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}