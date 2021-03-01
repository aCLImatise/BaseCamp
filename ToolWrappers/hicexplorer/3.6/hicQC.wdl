version 1.0

task HicQC {
  input {
    Array[String] log_files
    Array[String] labels
    Directory? output_folder
    Int? dpi
  }
  command <<<
    hicQC \
      ~{if defined(log_files) then ("--logfiles " +  '"' + log_files + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if defined(output_folder) then ("--outputFolder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hicexplorer:3.6--py_0"
  }
  parameter_meta {
    log_files: "Path to the log files to be processed"
    labels: "Label to assign to each log file. Each label should be\\nseparated by a space. Quote labels that contain\\nspaces: E.g. --labels label1 \\\"labels 2\\\""
    output_folder: "Several files with be saved under this folder: A table\\ncontaining the results and a html file with several\\nimages."
    dpi: "Image resolution. By default high resolution png\\nimages with a 200 dpi are created."
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}