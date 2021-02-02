version 1.0

task PhyluceNcbiPrepUceAlignFilesForNcbiTargetedLocusDb {
  input {
    Directory? alignments
    File? conf
    Directory? directory_store_files
    String? input_format
    String? verbosity
    File? log_path
  }
  command <<<
    phyluce_ncbi_prep_uce_align_files_for_ncbi_targeted_locus_db \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(conf) then ("--conf " +  '"' + conf + '"') else ""} \
      ~{if defined(directory_store_files) then ("--output " +  '"' + directory_store_files + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log_path) then ("--log-path " +  '"' + log_path + '"') else ""}
  >>>
  parameter_meta {
    alignments: "The directory containing alignments"
    conf: "The config file name"
    directory_store_files: "The directory in which to store output files"
    input_format: "The input alignment format"
    verbosity: "The logging level to use."
    log_path: "The path to a directory to hold logs."
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_store_files = "${in_directory_store_files}"
  }
}