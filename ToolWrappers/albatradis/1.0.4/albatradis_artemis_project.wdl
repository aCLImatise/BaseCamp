version 1.0

task AlbatradisartemisProject {
  input {
    String? control
    File? output_file
    Boolean? verbose
    Boolean? debug
    String reference
    String experiments_metadata
  }
  command <<<
    albatradis_artemis_project \
      ~{reference} \
      ~{experiments_metadata} \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(output_file) then ("--outputfile " +  '"' + output_file + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    control: "control files (can use multiple times) (default: None)"
    output_file: "Output filename (default: project.properties)"
    verbose: "Print out more information while it runs (default:\\nFalse)"
    debug: "Turn on debugging (default: False)"
    reference: "reference EMBL file"
    experiments_metadata: "experiments metadata spreadsheet"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}