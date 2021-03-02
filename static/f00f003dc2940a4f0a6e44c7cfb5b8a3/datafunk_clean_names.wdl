version 1.0

task DatafunkCleanNames {
  input {
    File? input_metadata
    String? trait
    File? output_metadata
    Boolean? verbose
  }
  command <<<
    datafunk clean_names \
      ~{if defined(input_metadata) then ("--input-metadata " +  '"' + input_metadata + '"') else ""} \
      ~{if defined(trait) then ("--trait " +  '"' + trait + '"') else ""} \
      ~{if defined(output_metadata) then ("--output-metadata " +  '"' + output_metadata + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0"
  }
  parameter_meta {
    input_metadata: "Input file: metadata (csv) for location curation"
    trait: "Column name containing the locations"
    output_metadata: "Output file name for resulting filtered metadata"
    verbose: "Run with high verbosity (debug level logging)"
  }
  output {
    File out_stdout = stdout()
    File out_output_metadata = "${in_output_metadata}"
  }
}