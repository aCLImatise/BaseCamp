version 1.0

task MsstitchConffilt {
  input {
    String? input_file_format
    String? directory_to_output
    String? output_file
    String? confidence_col
    String? conf_col_pattern
    String? confidence_lvl
    String? confidence_better
    Boolean? unroll
  }
  command <<<
    msstitch conffilt \
      ~{if defined(input_file_format) then ("-i " +  '"' + input_file_format + '"') else ""} \
      ~{if defined(directory_to_output) then ("-d " +  '"' + directory_to_output + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""} \
      ~{if defined(confidence_col) then ("--confidence-col " +  '"' + confidence_col + '"') else ""} \
      ~{if defined(conf_col_pattern) then ("--confcolpattern " +  '"' + conf_col_pattern + '"') else ""} \
      ~{if defined(confidence_lvl) then ("--confidence-lvl " +  '"' + confidence_lvl + '"') else ""} \
      ~{if defined(confidence_better) then ("--confidence-better " +  '"' + confidence_better + '"') else ""} \
      ~{true="--unroll" false="" unroll}
  >>>
  parameter_meta {
    input_file_format: "Input file of {} format"
    directory_to_output: "Directory to output in"
    output_file: "Output file"
    confidence_col: "Confidence column number or name in the tsv file. First column has number 1."
    conf_col_pattern: "Text pattern to identify column in table on which confidence filtering should be done. Use in case of not using standard {} column"
    confidence_lvl: "Confidence cutoff level as a floating point number"
    confidence_better: "Confidence type to define if higher or lower score is better. One of [higher, lower]"
    unroll: "PSM table from Mzid2TSV contains either one PSM per line with all the proteins of that shared peptide on the same line (not unrolled, default), or one PSM/protein match per line where each protein from that shared peptide gets its own line (unrolled)."
  }
}