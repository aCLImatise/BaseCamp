version 1.0

task MsstitchIsosummarize {
  input {
    File? input_file_format
    Directory? directory_to_output
    File? output_file
    String? is_ob_quant_col_pattern
    Array[String] denom_patterns
    Array[String] denom_cols
    Boolean? median_sweep
    Boolean? median_intensity
    Boolean? summarize_average
    Boolean? keep_psms_na_quant
    Int? min_int
    Int? feat_col
    Boolean? log_iso_quant
    Boolean? median_normalize
  }
  command <<<
    msstitch isosummarize \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(is_ob_quant_col_pattern) then ("--isobquantcolpattern " +  '"' + is_ob_quant_col_pattern + '"') else ""} \
      ~{if defined(denom_patterns) then ("--denompatterns " +  '"' + denom_patterns + '"') else ""} \
      ~{if defined(denom_cols) then ("--denomcols " +  '"' + denom_cols + '"') else ""} \
      ~{if (median_sweep) then "--mediansweep" else ""} \
      ~{if (median_intensity) then "--medianintensity" else ""} \
      ~{if (summarize_average) then "--summarize-average" else ""} \
      ~{if (keep_psms_na_quant) then "--keep-psms-na-quant" else ""} \
      ~{if defined(min_int) then ("--minint " +  '"' + min_int + '"') else ""} \
      ~{if defined(feat_col) then ("--featcol " +  '"' + feat_col + '"') else ""} \
      ~{if (log_iso_quant) then "--logisoquant" else ""} \
      ~{if (median_normalize) then "--median-normalize" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/msstitch:3.5--py_0"
  }
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    is_ob_quant_col_pattern: "Unique text pattern to identify isobaric quant columns\\nin input table."
    denom_patterns: "Regex patterns to detect denominator channels in a PSM\\ntable, when creating a table with summarized feature\\nisobaric ratios. If both --denompatterns and\\n--denomcol are given then column numbers are used.\\nUsage e.g. --denompattern _126 _131. Also possible:\\n--denompattern _12[6-7] to detect multiple columns."
    denom_cols: "Column numbers of denominator channels when creating a\\nsummarized feature table with isobaric ratios from\\nPSMs"
    median_sweep: "Instead of choosing a denominator channel, use the\\nmedian intensity of each PSM as its denominator."
    median_intensity: "Instead of choosing a denominator channel or median-\\nsweeping, report the the median intensity of each\\nsummarized feat per channel. This results in reported\\nintensities rather than ratios."
    summarize_average: "Use average isobaric quantification values for\\nsummarizing quant from PSMs, instead of default PSM\\nmedian values"
    keep_psms_na_quant: "When summarizing isobaric quantification data, also\\nuse the PSMs that have an NA in any channel, even if\\nthese may contain overly noisy quant data in the other\\nchannels. Normally these PSMs would be skipped in\\nquantification"
    min_int: "Intensity threshold of PSMs when calculating isobaric\\nratios. Values below threshold will be set to NA.\\nDefaults to no threshold."
    feat_col: "Column number in table in which desired accessions to\\nsummarize are stored. First column number is 1. If not\\nspecified this will summarize to PSMs themselves, i.e.\\nonly calculate the ratios and add those to the PSM\\ntable."
    log_iso_quant: "Output log2 values for isoquant ratios. This\\nlog2-transforms input PSM data prior to summarizing\\nand optional normalization. Ratios will be calculated\\nsubtracted rather than divided, obviously."
    median_normalize: "Median-centering normalization for isobaric quant data\\non protein or peptide level. This median-centers the\\ndata for each channel by dividing with the median\\nchannel value (or subtracting in case of log data),\\nfor each channel in output features, e.g. proteins.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_to_output = "${in_directory_to_output}"
    File out_output_file = "${in_output_file}"
  }
}