version 1.0

task MsstitchMerge {
  input {
    String? fdr_col_pattern
    Directory? directory_to_output
    File? output_file
    Array[String] set_names
    String? is_ob_quant_col_pattern
    Int? psm_nr_col_pattern
    Int? ms_one_quant_col_pattern
    Int? feat_col
    File? dbfile
    String? merge_cut_off
    Boolean? no_group_annotation
    Boolean? gene_centric
  }
  command <<<
    msstitch merge \
      ~{if defined(fdr_col_pattern) then ("--fdrcolpattern " +  '"' + fdr_col_pattern + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(set_names) then ("--setnames " +  '"' + set_names + '"') else ""} \
      ~{if defined(is_ob_quant_col_pattern) then ("--isobquantcolpattern " +  '"' + is_ob_quant_col_pattern + '"') else ""} \
      ~{if defined(psm_nr_col_pattern) then ("--psmnrcolpattern " +  '"' + psm_nr_col_pattern + '"') else ""} \
      ~{if defined(ms_one_quant_col_pattern) then ("--ms1quantcolpattern " +  '"' + ms_one_quant_col_pattern + '"') else ""} \
      ~{if defined(feat_col) then ("--featcol " +  '"' + feat_col + '"') else ""} \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if defined(merge_cut_off) then ("--mergecutoff " +  '"' + merge_cut_off + '"') else ""} \
      ~{if (no_group_annotation) then "--no-group-annotation" else ""} \
      ~{if (gene_centric) then "--genecentric" else ""}
  >>>
  parameter_meta {
    fdr_col_pattern: "[--featcol FEATCOL] --dbfile LOOKUPFN\\n[--mergecutoff MERGECUTOFF] [--no-group-annotation]\\n[--genecentric]"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    set_names: "Names of biological sets. Can be specified with\\nquotation marks if spaces are used"
    is_ob_quant_col_pattern: "Unique text pattern to identify isobaric quant columns\\nin input table."
    psm_nr_col_pattern: "Unique text pattern to identify number-of-psms column\\nin input table."
    ms_one_quant_col_pattern: "Unique text pattern to identify precursor quant column\\nin input table."
    feat_col: "Column number in table in which protein or gene\\naccessions are. stored. First column number is 1. Use\\nin case of not using standard first column"
    dbfile: "Database lookup file"
    merge_cut_off: "FDR cutoff when building merged protein table, to use\\nwhen a cutoff has been used before storing the table\\nto lookup. FDR values need to be stored in the lookup"
    no_group_annotation: "For peptide table merging. Do not include protein\\ngroup or gene data in output, just use accessions."
    gene_centric: "For peptide table merging. Do not include protein\\ngroup data in output, but use gene names instead to\\ncount peptides per feature, determine peptide-\\nuniqueness.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_to_output = "${in_directory_to_output}"
    File out_output_file = "${in_output_file}"
  }
}