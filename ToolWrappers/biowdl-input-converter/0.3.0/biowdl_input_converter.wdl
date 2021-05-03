version 1.0

task Biowdlinputconverter {
  input {
    String? format
    File? output_file_written
    Boolean? validate
    Boolean? skip_file_check
    String old_output_old
    String present_dot
    String checkfilemdsums_do_check
  }
  command <<<
    biowdl_input_converter \
      ~{old_output_old} \
      ~{present_dot} \
      ~{checkfilemdsums_do_check} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(output_file_written) then ("--output " +  '"' + output_file_written + '"') else ""} \
      ~{if (validate) then "--validate" else ""} \
      ~{if (skip_file_check) then "--skip-file-check" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/biowdl-input-converter:0.3.0--pyhdfd78af_0"
  }
  parameter_meta {
    format: "The input samplesheet format - tsv, csv, json, or yaml"
    output_file_written: "The output file to which the json is written. Default:\\nstdout"
    validate: "Do not generate output but only validate the"
    skip_file_check: "Skip the checking if files in the samplesheet are"
    old_output_old: "--old                 Output old style JSON as used in BioWDL germline-DNA"
    present_dot: "--skip-duplicate-check"
    checkfilemdsums_do_check: "--check-file-md5sums  Do a md5sum check for reads which have md5sums added"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_written = "${in_output_file_written}"
  }
}