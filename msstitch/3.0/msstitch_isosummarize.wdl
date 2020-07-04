version 1.0

task MsstitchIsosummarize {
  input {
    String? input_file_format
    String? directory_to_output
    String? output_file
    String? is_ob_quant_col_pattern
    Array[String] denom_patterns
    Array[String] denom_cols
    Int? min_int
    String? target_table
    String? feat_col
  }
  command <<<
    msstitch isosummarize \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(is_ob_quant_col_pattern) then ("--isobquantcolpattern " +  '"' + is_ob_quant_col_pattern + '"') else ""} \
      ~{if defined(denom_patterns) then ("--denompatterns " +  '"' + denom_patterns + '"') else ""} \
      ~{if defined(denom_cols) then ("--denomcols " +  '"' + denom_cols + '"') else ""} \
      ~{if defined(min_int) then ("--minint " +  '"' + min_int + '"') else ""} \
      ~{if defined(target_table) then ("--targettable " +  '"' + target_table + '"') else ""} \
      ~{if defined(feat_col) then ("--featcol " +  '"' + feat_col + '"') else ""}
  >>>
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    is_ob_quant_col_pattern: "Unique text pattern to identify isobaric quant columns in input table."
    denom_patterns: "Regex patterns to detect denominator channels in a PSM table, when creating a table with summarized feature isobaric ratios. If both --denompatterns and --denomcol are given then column numbers are used. Usage e.g. --denompattern _126 _131. Also possible: --denompattern _12[6-7] to detect multiple columns."
    denom_cols: "Column numbers of denominator channels when creating a summarized feature table with isobaric ratios from PSMs"
    min_int: "Intensity threshold of PSMs when calculating isobaric ratios. Values below threshold will be set to NA."
    target_table: "Table to output PSM or other feature quant data to. Used when calculating PSM isobaric intenstity ratios for proteins, peptides, genes. Leaving empty will output to a new table, or when no --featcol is specified, pastes ratios to the PSM table they are fetched from."
    feat_col: "Column number in table in which protein or gene accessions are. stored. First column number is 1. Use in case of not using standard {} column"
  }
}