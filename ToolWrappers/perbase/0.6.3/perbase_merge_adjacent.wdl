version 1.0

task PerbaseMergeadjacent {
  input {
    Boolean? no_header
    String? output_location_defaults
    String? flags
  }
  command <<<
    perbase merge_adjacent \
      ~{flags} \
      ~{if (no_header) then "--no-header" else ""} \
      ~{if defined(output_location_defaults) then ("--output " +  '"' + output_location_defaults + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/perbase:0.6.3--h35a96ae_0"
  }
  parameter_meta {
    no_header: "Indicate if the input file does not have a header"
    output_location_defaults: "The output location, defaults to STDOUT"
    flags: ""
  }
  output {
    File out_stdout = stdout()
  }
}