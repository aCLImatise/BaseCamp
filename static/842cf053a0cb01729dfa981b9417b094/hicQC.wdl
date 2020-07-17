version 1.0

task HicQC {
  input {
    Array[String] log_files
    Array[String] labels
    String? output_folder
    String? dpi
    String matrix_two_qc_folder_slash_qc_dot_log
  }
  command <<<
    hicQC \
      ~{matrix_two_qc_folder_slash_qc_dot_log} \
      ~{if defined(log_files) then ("--logfiles " +  '"' + log_files + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""}
  >>>
  parameter_meta {
    log_files: "Path to the log files to be processed"
    labels: "Label to assign to each log file. Each label should be separated by a space. Quote labels that contain spaces: E.g. --labels label1 \"labels 2\""
    output_folder: "Several files with be saved under this folder: A table containing the results and a html file with several images."
    dpi: "Image resolution. By default high resolution png images with a 200 dpi are created."
    matrix_two_qc_folder_slash_qc_dot_log: ""
  }
}