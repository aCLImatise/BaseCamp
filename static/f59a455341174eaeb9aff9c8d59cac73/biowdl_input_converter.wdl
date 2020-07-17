version 1.0

task BiowdlInputConverter {
  input {
    String? output_file_written
    Boolean? validate
    Boolean? old
    Boolean? skip_file_check
    Boolean? check_file_md_five_sums
    String sample_sheet
  }
  command <<<
    biowdl-input-converter \
      ~{sample_sheet} \
      ~{if defined(output_file_written) then ("--output " +  '"' + output_file_written + '"') else ""} \
      ~{true="--validate" false="" validate} \
      ~{true="--old" false="" old} \
      ~{true="--skip-file-check" false="" skip_file_check} \
      ~{true="--check-file-md5sums" false="" check_file_md_five_sums}
  >>>
  parameter_meta {
    output_file_written: "The output file to which the json is written. Default: stdout"
    validate: "Do not generate output but only validate the samplesheet."
    old: "Output old style JSON as used in BioWDL germline-DNA and RNA-seq version 1 pipelines"
    skip_file_check: "Skip the checking if files in the samplesheet are present."
    check_file_md_five_sums: "Do a md5sum check for reads which have md5sums added in the samplesheet."
    sample_sheet: "The input samplesheet. Format will be automatically detected."
  }
}