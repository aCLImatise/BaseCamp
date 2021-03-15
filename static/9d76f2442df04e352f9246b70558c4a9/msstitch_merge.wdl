version 1.0

task MsstitchMerge {
  input {
    Directory? directory_to_output
    File? output_file
    Array[String] set_names
    String? is_ob_quant_col_pattern
    Int? ms_one_quant_col_pattern
    String? fdr_col_pattern
    String? flr_col_pattern
    Array[String] multiple_input_files
    Int? feat_col
    File? dbfile
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
      ~{if defined(ms_one_quant_col_pattern) then ("--ms1quantcolpattern " +  '"' + ms_one_quant_col_pattern + '"') else ""} \
      ~{if defined(fdr_col_pattern) then ("--fdrcolpattern " +  '"' + fdr_col_pattern + '"') else ""} \
      ~{if defined(flr_col_pattern) then ("--flrcolpattern " +  '"' + flr_col_pattern + '"') else ""} \
      ~{if defined(multiple_input_files) then ("-i " +  '"' + multiple_input_files + '"') else ""} \
      ~{if defined(feat_col) then ("--featcol " +  '"' + feat_col + '"') else ""} \
      ~{if defined(dbfile) then ("--dbfile " +  '"' + dbfile + '"') else ""} \
      ~{if defined(merge_cut_off) then ("--mergecutoff " +  '"' + merge_cut_off + '"') else ""} \
      ~{if (no_group_annotation) then "--no-group-annotation" else ""} \
      ~{if (gene_centric) then "--genecentric" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msstitch:3.6--py_0"
  }
  parameter_meta {
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    set_names: "Names of biological sets. Can be specified with\\nquotation marks if spaces are used"
    is_ob_quant_col_pattern: "Unique text pattern to identify isobaric quant columns\\nin input table."
    ms_one_quant_col_pattern: "Unique text pattern to identify precursor quant column\\nin input table."
    fdr_col_pattern: "Unique text pattern to identify FDR column in input\\ntable."
    flr_col_pattern: "Unique text pattern to identify FLR (peptide PTM false\\nlocalization rate) column in input table."
    multiple_input_files: "Multiple input files of {} format"
    feat_col: "Column number in table in which desired accessions\\nare. stored. First column number is 1. Use in case of\\nnot using default column 1"
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