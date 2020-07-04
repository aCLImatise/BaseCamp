version 1.0

task AtlasValidation.py {
  input {
    String? data_dir
    Boolean? verbose
    Boolean? hca
    Boolean? single_cell
    Boolean? sequencing
    Boolean? microarray
    Boolean? skip_file_checks
    String idf
  }
  command <<<
    atlas_validation.py \
      ~{idf} \
      ~{if defined(data_dir) then ("--data_dir " +  '"' + data_dir + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-hca" false="" hca} \
      ~{true="--singlecell" false="" single_cell} \
      ~{true="--sequencing" false="" sequencing} \
      ~{true="--microarray" false="" microarray} \
      ~{true="--skip-file-checks" false="" skip_file_checks}
  >>>
  parameter_meta {
    data_dir: "Path to the directory with SDRF and data files"
    verbose: "Option to output detailed logging (debug level)."
    hca: "Mark experiment as HCA import"
    single_cell: "Force submission type to be 'singlecell'"
    sequencing: "Force submission type to be 'sequencing'"
    microarray: "Force submission type to be 'microarray'"
    skip_file_checks: "Skip file and URI checks"
    idf: "Path to the MAGE-TAB IDF file"
  }
}