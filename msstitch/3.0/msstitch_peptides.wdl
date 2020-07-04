version 1.0

task MsstitchPeptides {
  input {
    String? input_file_format
    String? directory_to_output
    String? output_file
    String? spectra_col
    String? score_col_pattern
    String? is_ob_quant_col_pattern
    String? ms_one_quant_col_pattern
    Int? min_int
    Array[String] denom_cols
    Array[String] denom_patterns
    Boolean? model_q_vals
    String? q_val_threshold
    Int? min_pep_nr
  }
  command <<<
    msstitch peptides \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(spectra_col) then ("--spectracol " +  '"' + spectra_col + '"') else ""} \
      ~{if defined(score_col_pattern) then ("--scorecolpattern " +  '"' + score_col_pattern + '"') else ""} \
      ~{if defined(is_ob_quant_col_pattern) then ("--isobquantcolpattern " +  '"' + is_ob_quant_col_pattern + '"') else ""} \
      ~{if defined(ms_one_quant_col_pattern) then ("--ms1quantcolpattern " +  '"' + ms_one_quant_col_pattern + '"') else ""} \
      ~{if defined(min_int) then ("--minint " +  '"' + min_int + '"') else ""} \
      ~{if defined(denom_cols) then ("--denomcols " +  '"' + denom_cols + '"') else ""} \
      ~{if defined(denom_patterns) then ("--denompatterns " +  '"' + denom_patterns + '"') else ""} \
      ~{true="--modelqvals" false="" model_q_vals} \
      ~{if defined(q_val_threshold) then ("--qvalthreshold " +  '"' + q_val_threshold + '"') else ""} \
      ~{if defined(min_pep_nr) then ("--minpepnr " +  '"' + min_pep_nr + '"') else ""}
  >>>
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    spectra_col: "Specify this column number (first col. is 1) containing PSM table spectrafiles (e.g. mzML) if you want to track PSMs when creating peptide tables"
    score_col_pattern: "Regular expression pattern to find column where score to use (e.g. percolator svm-score) is written."
    is_ob_quant_col_pattern: "Unique text pattern to identify isobaric quant columns in input table."
    ms_one_quant_col_pattern: "Unique text pattern to identify precursor quant column in input table."
    min_int: "Intensity threshold of PSMs when calculating isobaric ratios. Values below threshold will be set to NA."
    denom_cols: "Column numbers of denominator channels when creating a summarized feature table with isobaric ratios from PSMs"
    denom_patterns: "Regex patterns to detect denominator channels in a PSM table, when creating a table with summarized feature isobaric ratios. If both --denompatterns and --denomcol are given then column numbers are used. Usage e.g. --denompattern _126 _131. Also possible: --denompattern _12[6-7] to detect multiple columns."
    model_q_vals: "Create linear-modeled q-vals for peptides, to avoid overlapping stepped low-qvalue data of peptides with different scores"
    q_val_threshold: "Specifies the inclusion threshold for q-values to fit a linear model to. Any scores/q-values below this threshold will not be used."
    min_pep_nr: "Specifies the minimal amount of peptides (passing the --qvalthreshold) needed to fit a linear model, default is 10."
  }
}