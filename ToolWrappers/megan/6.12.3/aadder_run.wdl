version 1.0

task Aadderrun {
  input {
    Boolean? input_sam_files
    Boolean? index
    File? output_files_directory
    Boolean? report_not_found
    Boolean? verbose
  }
  command <<<
    aadder_run \
      ~{if (input_sam_files) then "--input" else ""} \
      ~{if (index) then "--index" else ""} \
      ~{if (output_files_directory) then "--output" else ""} \
      ~{if (report_not_found) then "--reportNotFound" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_sam_files: "[string(s)]              Input SAM file(s) (.gz ok). Mandatory option."
    index: "[string]                 AAdd index directory. Mandatory option."
    output_files_directory: "[string(s)]             Output file(s) (.gz ok) or directory. Mandatory option."
    report_not_found: "Report the names of DNA reference for which no functional accession is available. Default value: false."
    verbose: "Echo commandline options and be verbose. Default value: false."
  }
  output {
    File out_stdout = stdout()
    File out_output_files_directory = "${in_output_files_directory}"
  }
}