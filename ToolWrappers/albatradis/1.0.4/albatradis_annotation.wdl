version 1.0

task Albatradisannotation {
  input {
    Int? feature_size
    File? output_file
    Boolean? verbose
    Boolean? debug
    String embl_file
  }
  command <<<
    albatradis_annotation \
      ~{embl_file} \
      ~{if defined(feature_size) then ("--feature_size " +  '"' + feature_size + '"') else ""} \
      ~{if defined(output_file) then ("--outputfile " +  '"' + output_file + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    feature_size: "Feature size (default: 198)"
    output_file: "Output file (default: output.embl)"
    verbose: "Print out more information about the analysis while it\\nruns (default: False)"
    debug: "Turn on debugging (default: False)"
    embl_file: "Annotation file in EMBL format"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}