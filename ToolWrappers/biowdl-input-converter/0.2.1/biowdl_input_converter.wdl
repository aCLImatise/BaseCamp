version 1.0

task Biowdlinputconverter {
  input {
    File? output_file_written
    Boolean? validate
    Boolean? skip_file_check
    Boolean? old
    String detected_dot
    String sample_sheet_dot
    String present_dot
  }
  command <<<
    biowdl_input_converter \
      ~{detected_dot} \
      ~{sample_sheet_dot} \
      ~{present_dot} \
      ~{if defined(output_file_written) then ("--output " +  '"' + output_file_written + '"') else ""} \
      ~{if (validate) then "--validate" else ""} \
      ~{if (skip_file_check) then "--skip-file-check" else ""} \
      ~{if (old) then "--old" else ""}
  >>>
  parameter_meta {
    output_file_written: "The output file to which the json is written. Default:\\nstdout"
    validate: "Do not generate output but only validate the"
    skip_file_check: "Skip the checking if files in the samplesheet are"
    old: ""
    detected_dot: "optional arguments:"
    sample_sheet_dot: "--old                 Output old style JSON as used in BioWDL germline-DNA"
    present_dot: "--check-file-md5sums  Do a md5sum check for reads which have md5sums added"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_written = "${in_output_file_written}"
  }
}