version 1.0

task AtlasValidationpy {
  input {
    File? data_dir
    Boolean? verbose
    Boolean? hca
    Boolean? single_cell
    Boolean? sequencing
    Boolean? microarray
    Boolean? skip_file_checks
  }
  command <<<
    atlas_validation_py \
      ~{if defined(data_dir) then ("--data_dir " +  '"' + data_dir + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (hca) then "-hca" else ""} \
      ~{if (single_cell) then "--singlecell" else ""} \
      ~{if (sequencing) then "--sequencing" else ""} \
      ~{if (microarray) then "--microarray" else ""} \
      ~{if (skip_file_checks) then "--skip-file-checks" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data_dir: "Path to the directory with SDRF and data files"
    verbose: "Option to output detailed logging (debug level)."
    hca: "Mark experiment as HCA import"
    single_cell: "Force submission type to be 'singlecell'"
    sequencing: "Force submission type to be 'sequencing'"
    microarray: "Force submission type to be 'microarray'"
    skip_file_checks: "Skip file and URI checks\\n"
  }
  output {
    File out_stdout = stdout()
  }
}