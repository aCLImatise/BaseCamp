version 1.0

task MsstitchPeptides {
  input {
    File? input_file_format
    Directory? directory_to_output
    File? output_file
    Int? spectra_col
    String? regular_expression_pattern
    String? is_ob_quant_col_pattern
    Int? ms_one_quant_col_pattern
    Int? min_int
    Array[String] denom_cols
    Array[String] denom_patterns
    Boolean? model_q_vals
    String? q_val_threshold
    Int? min_pep_nr
    String var_13
  }
  command <<<
    msstitch peptides \
      ~{var_13} \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(spectra_col) then ("--spectracol " +  '"' + spectra_col + '"') else ""} \
      ~{if defined(regular_expression_pattern) then ("--scorecolpattern " +  '"' + regular_expression_pattern + '"') else ""} \
      ~{if defined(is_ob_quant_col_pattern) then ("--isobquantcolpattern " +  '"' + is_ob_quant_col_pattern + '"') else ""} \
      ~{if defined(ms_one_quant_col_pattern) then ("--ms1quantcolpattern " +  '"' + ms_one_quant_col_pattern + '"') else ""} \
      ~{if defined(min_int) then ("--minint " +  '"' + min_int + '"') else ""} \
      ~{if defined(denom_cols) then ("--denomcols " +  '"' + denom_cols + '"') else ""} \
      ~{if defined(denom_patterns) then ("--denompatterns " +  '"' + denom_patterns + '"') else ""} \
      ~{if (model_q_vals) then "--modelqvals" else ""} \
      ~{if defined(q_val_threshold) then ("--qvalthreshold " +  '"' + q_val_threshold + '"') else ""} \
      ~{if defined(min_pep_nr) then ("--minpepnr " +  '"' + min_pep_nr + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    spectra_col: "Specify this column number (first col. is 1)\\ncontaining PSM table spectrafiles (e.g. mzML) if you\\nwant to track PSMs when creating peptide tables"
    regular_expression_pattern: "Regular expression pattern to find column where score\\nto use (e.g. percolator svm-score) is written."
    is_ob_quant_col_pattern: "Unique text pattern to identify isobaric quant columns\\nin input table."
    ms_one_quant_col_pattern: "Unique text pattern to identify precursor quant column\\nin input table."
    min_int: "Intensity threshold of PSMs when calculating isobaric\\nratios. Values below threshold will be set to NA."
    denom_cols: "Column numbers of denominator channels when creating a\\nsummarized feature table with isobaric ratios from\\nPSMs"
    denom_patterns: "Regex patterns to detect denominator channels in a PSM\\ntable, when creating a table with summarized feature\\nisobaric ratios. If both --denompatterns and\\n--denomcol are given then column numbers are used.\\nUsage e.g. --denompattern _126 _131. Also possible:\\n--denompattern _12[6-7] to detect multiple columns."
    model_q_vals: "Create linear-modeled q-vals for peptides, to avoid\\noverlapping stepped low-qvalue data of peptides with\\ndifferent scores"
    q_val_threshold: "Specifies the inclusion threshold for q-values to fit\\na linear model to. Any scores/q-values below this\\nthreshold will not be used."
    min_pep_nr: "Specifies the minimal amount of peptides (passing the\\n--qvalthreshold) needed to fit a linear model, default\\nis 10.\\n"
    var_13: "[--isobquantcolpattern QUANTCOLPATTERN]"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_to_output = "${in_directory_to_output}"
    File out_output_file = "${in_output_file}"
  }
}