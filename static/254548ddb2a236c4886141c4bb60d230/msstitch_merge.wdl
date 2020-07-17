version 1.0

task MsstitchMerge {
  input {
    String? directory_to_output
    String? output_file
    Array[String] set_names
    String? is_ob_quant_col_pattern
    String? psm_nr_col_pattern
    String? ms_one_quant_col_pattern
    String? fdr_col_pattern
    Array[String] multiple_input_files
    String? feat_col
    String? dbfile
    String? merge_cut_off
    Boolean? no_group_annotation
    Boolean? gene_centric
  }
  command <<<
    msstitch merge \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(set_names) then ("--setnames " +  '"' + set_names + '"') else ""} \
      ~{if defined(is_ob_quant_col_pattern) then ("--isobquantcolpattern " +  '"' + is_ob_quant_col_pattern + '"') else ""} \
      ~{if defined(psm_nr_col_pattern) then ("--psmnrcolpattern " +  '"' + psm_nr_col_pattern + '"') else ""} \
      ~{if defined(ms_one_quant_col_pattern) then ("--ms1quantcolpattern " +  '"' + ms_one_quant_col_pattern + '"') else ""} \
      ~{if defined(fdr_col_pattern) then ("--fdrcolpattern " +  '"' + fdr_col_pattern + '"') else ""} \
      ~{if defined(multiple_input_files) then ("-i " +  '"' + multiple_input_files + '"') else ""} \
      ~{if defined(feat_col) then ("--featcol " +  '"' + feat_col + '"') else ""} \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if defined(merge_cut_off) then ("--mergecutoff " +  '"' + merge_cut_off + '"') else ""} \
      ~{true="--no-group-annotation" false="" no_group_annotation} \
      ~{true="--genecentric" false="" gene_centric}
  >>>
  parameter_meta {
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    set_names: "Names of biological sets. Can be specified with quotation marks if spaces are used"
    is_ob_quant_col_pattern: "Unique text pattern to identify isobaric quant columns in input table."
    psm_nr_col_pattern: "Unique text pattern to identify number-of-psms column in input table."
    ms_one_quant_col_pattern: "Unique text pattern to identify precursor quant column in input table."
    fdr_col_pattern: "Unique text pattern to identify FDR column in input table."
    multiple_input_files: "Multiple input files of {} format"
    feat_col: "Column number in table in which protein or gene accessions are. stored. First column number is 1. Use in case of not using standard first column"
    dbfile: "Database lookup file"
    merge_cut_off: "FDR cutoff when building merged protein table, to use when a cutoff has been used before storing the table to lookup. FDR values need to be stored in the lookup"
    no_group_annotation: "For peptide table merging. Do not include protein group or gene data in output, just use accessions."
    gene_centric: "For peptide table merging. Do not include protein group data in output, but use gene names instead to count peptides per feature, determine peptide- uniqueness."
  }
}