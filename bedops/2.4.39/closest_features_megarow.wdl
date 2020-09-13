version 1.0

task Closestfeaturesmegarow {
  input {
    String? chrom
    Boolean? closest
    String? delim
    Boolean? dist
    Boolean? ec
    Boolean? header
    Boolean? no_overlaps
    Boolean? no_ref
    String closest_features
    String? process_flags
    File input_file
    File query_file
  }
  command <<<
    closest_features_megarow \
      ~{closest_features} \
      ~{process_flags} \
      ~{input_file} \
      ~{query_file} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{if (closest) then "--closest" else ""} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{if (dist) then "--dist" else ""} \
      ~{if (ec) then "--ec" else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (no_overlaps) then "--no-overlaps" else ""} \
      ~{if (no_ref) then "--no-ref" else ""}
  >>>
  parameter_meta {
    chrom: "Jump to and process data for given <chromosome> only."
    closest: "Choose the closest element for output only.  Ties go the left element."
    delim: "Change output delimiter from '|' to <delim> between columns (e.g. '\\t')"
    dist: "Print the signed distances to the <input-file> element as additional\\ncolumns of output.  An overlapping element has a distance of 0."
    ec: "Error check all input files (slower)."
    header: "Accept headers (VCF, GFF, SAM, BED, WIG) in any input file."
    no_overlaps: "Overlapping elements from <query-file> will not be reported."
    no_ref: "Do not echo elements from <input-file>."
    closest_features: ""
    process_flags: ""
    input_file: ""
    query_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}