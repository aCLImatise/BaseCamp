version 1.0

task Sonicparanoidextract {
  input {
    String? input_table
    Directory? output_directory
    Directory? fast_a_directory
    Int? min_sp
    Int? max_sp
    Int? ids_list
    Int? min_conf
    Boolean? fast_a
    Int? an_not_cols
    File? an_not_file
    Int? gene_col_id
    Boolean? debug
    String cluster_dot
  }
  command <<<
    sonicparanoid_extract \
      ~{cluster_dot} \
      ~{if defined(input_table) then ("--input-table " +  '"' + input_table + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(fast_a_directory) then ("--fasta-directory " +  '"' + fast_a_directory + '"') else ""} \
      ~{if defined(min_sp) then ("--min-sp " +  '"' + min_sp + '"') else ""} \
      ~{if defined(max_sp) then ("--max-sp " +  '"' + max_sp + '"') else ""} \
      ~{if defined(ids_list) then ("--ids-list " +  '"' + ids_list + '"') else ""} \
      ~{if defined(min_conf) then ("--min-conf " +  '"' + min_conf + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(an_not_cols) then ("--annot-cols " +  '"' + an_not_cols + '"') else ""} \
      ~{if defined(an_not_file) then ("--annot-file " +  '"' + an_not_file + '"') else ""} \
      ~{if defined(gene_col_id) then ("--gene-col-id " +  '"' + gene_col_id + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    input_table: "Table with output groups generated using\\nSonicParanoid. NOTE: the headers must not be modified\\nor removed."
    output_directory: "The directory in which the results will be stored."
    fast_a_directory: "Directory containing the proteome files in FASTA\\nformat."
    min_sp: "Exctract clusters with genes from at least --min-sp\\nspecies. (Default=2)"
    max_sp: "Exctract clusters with genes from at max --max-sp\\nspecies. (Default=2)"
    ids_list: "Extract a list of clusters by their ids. NOTE: the ids\\nshould be separated by a comma (e.g., --ids-list\\n20,23,40,22); this parameter bypasses the --min-sp and\\nmax-sp."
    min_conf: "Keep only orthologs with a confidence higher than\\n--min-conf. (Default=0.05)"
    fast_a: "Generate a FASTA for with the proteins in each"
    an_not_cols: "Column ids containing annotations for the new HDR.\\nNOTE: the column positions should be separated by a\\ncomma (e.g., --annot-cols 1,2,4,5); this parameter\\nbypasses."
    an_not_file: "Table with tab-serataed fields with annotations."
    gene_col_id: "Column number of the annotation file containing the\\nprotein id."
    debug: "Output debug information."
    cluster_dot: "-mf, --multiple-fasta"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}