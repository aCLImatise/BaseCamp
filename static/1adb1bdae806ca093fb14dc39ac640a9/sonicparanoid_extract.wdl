version 1.0

task SonicparanoidExtract {
  input {
    String? input_table
    String? output_directory
    String? fast_a_directory
    Int? min_sp
    Int? max_sp
    String? ids_list
    Int? min_conf
    Boolean? fast_a
    Boolean? multiple_fast_a
    String? an_not_cols
    String? an_not_file
    String? gene_col_id
    Boolean? debug
  }
  command <<<
    sonicparanoid-extract \
      ~{if defined(input_table) then ("--input-table " +  '"' + input_table + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(fast_a_directory) then ("--fasta-directory " +  '"' + fast_a_directory + '"') else ""} \
      ~{if defined(min_sp) then ("--min-sp " +  '"' + min_sp + '"') else ""} \
      ~{if defined(max_sp) then ("--max-sp " +  '"' + max_sp + '"') else ""} \
      ~{if defined(ids_list) then ("--ids-list " +  '"' + ids_list + '"') else ""} \
      ~{if defined(min_conf) then ("--min-conf " +  '"' + min_conf + '"') else ""} \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--multiple-fasta" false="" multiple_fast_a} \
      ~{if defined(an_not_cols) then ("--annot-cols " +  '"' + an_not_cols + '"') else ""} \
      ~{if defined(an_not_file) then ("--annot-file " +  '"' + an_not_file + '"') else ""} \
      ~{if defined(gene_col_id) then ("--gene-col-id " +  '"' + gene_col_id + '"') else ""} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    input_table: "Table with output groups generated using SonicParanoid. NOTE: the headers must not be modified or removed."
    output_directory: "The directory in which the results will be stored."
    fast_a_directory: "Directory containing the proteome files in FASTA format."
    min_sp: "Exctract clusters with genes from at least --min-sp species. (Default=2)"
    max_sp: "Exctract clusters with genes from at max --max-sp species. (Default=2)"
    ids_list: "Extract a list of clusters by their ids. NOTE: the ids should be separated by a comma (e.g., --ids-list 20,23,40,22); this parameter bypasses the --min-sp and max-sp."
    min_conf: "Keep only orthologs with a confidence higher than --min-conf. (Default=0.05)"
    fast_a: "Generate a FASTA for with the proteins in each cluster."
    multiple_fast_a: "Generate a FASTA file for each species in each cluster. (implies --fasta)"
    an_not_cols: "Column ids containing annotations for the new HDR. NOTE: the column positions should be separated by a comma (e.g., --annot-cols 1,2,4,5); this parameter bypasses."
    an_not_file: "Table with tab-serataed fields with annotations."
    gene_col_id: "Column number of the annotation file containing the protein id."
    debug: "Output debug information."
  }
}