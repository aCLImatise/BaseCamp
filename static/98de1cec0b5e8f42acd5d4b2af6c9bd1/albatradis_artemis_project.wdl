version 1.0

task AlbatradisArtemisProject {
  input {
    String? control
    String? output_file
    Boolean? verbose
    Boolean? debug
    String reference
    String experiments_metadata
  }
  command <<<
    albatradis-artemis_project \
      ~{reference} \
      ~{experiments_metadata} \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(output_file) then ("--outputfile " +  '"' + output_file + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    control: "control files (can use multiple times) (default: None)"
    output_file: "Output filename (default: project.properties)"
    verbose: "Print out more information while it runs (default: False)"
    debug: "Turn on debugging (default: False)"
    reference: "reference EMBL file"
    experiments_metadata: "experiments metadata spreadsheet"
  }
}