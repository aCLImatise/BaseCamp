version 1.0

task AlbatradisAnnotation {
  input {
    String? feature_size
    String? output_file
    Boolean? verbose
    Boolean? debug
    String embl_file
  }
  command <<<
    albatradis-annotation \
      ~{embl_file} \
      ~{if defined(feature_size) then ("--feature_size " +  '"' + feature_size + '"') else ""} \
      ~{if defined(output_file) then ("--outputfile " +  '"' + output_file + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    feature_size: "Feature size (default: 198)"
    output_file: "Output file (default: output.embl)"
    verbose: "Print out more information about the analysis while it runs (default: False)"
    debug: "Turn on debugging (default: False)"
    embl_file: "Annotation file in EMBL format"
  }
}