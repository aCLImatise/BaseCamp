version 1.0

task ClosestFeaturesTypical {
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
    String input_file
    String query_file
  }
  command <<<
    closest-features-typical \
      ~{closest_features} \
      ~{process_flags} \
      ~{input_file} \
      ~{query_file} \
      ~{if defined(chrom) then ("--chrom " +  '"' + chrom + '"') else ""} \
      ~{true="--closest" false="" closest} \
      ~{if defined(delim) then ("--delim " +  '"' + delim + '"') else ""} \
      ~{true="--dist" false="" dist} \
      ~{true="--ec" false="" ec} \
      ~{true="--header" false="" header} \
      ~{true="--no-overlaps" false="" no_overlaps} \
      ~{true="--no-ref" false="" no_ref}
  >>>
  parameter_meta {
    chrom: "Jump to and process data for given <chromosome> only."
    closest: "Choose the closest element for output only.  Ties go the left element."
    delim: "Change output delimiter from '|' to <delim> between columns (e.g. '\t')"
    dist: "Print the signed distances to the <input-file> element as additional columns of output.  An overlapping element has a distance of 0."
    ec: "Error check all input files (slower)."
    header: "Accept headers (VCF, GFF, SAM, BED, WIG) in any input file."
    no_overlaps: "Overlapping elements from <query-file> will not be reported."
    no_ref: "Do not echo elements from <input-file>."
    closest_features: ""
    process_flags: ""
    input_file: ""
    query_file: ""
  }
}