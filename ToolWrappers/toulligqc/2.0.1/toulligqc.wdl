version 1.0

task Toulligqc {
  input {
    String? sequencing_summary_source
    File? telemetry_source
    Int? fast_five_source
    String? report_name
    Directory? output_directory
    File? html_report_path
    File? data_report_path
    Directory? images_directory
    Int? sequencing_summary_one_d_sqr_source
    Boolean? barcoding
    String? barcodes
    Boolean? quiet
    Boolean? force
    Float v_two_dot_zero_dot_one
  }
  command <<<
    toulligqc \
      ~{v_two_dot_zero_dot_one} \
      ~{if defined(sequencing_summary_source) then ("--sequencing-summary-source " +  '"' + sequencing_summary_source + '"') else ""} \
      ~{if defined(telemetry_source) then ("--telemetry-source " +  '"' + telemetry_source + '"') else ""} \
      ~{if defined(fast_five_source) then ("--fast5-source " +  '"' + fast_five_source + '"') else ""} \
      ~{if defined(report_name) then ("--report-name " +  '"' + report_name + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(html_report_path) then ("--html-report-path " +  '"' + html_report_path + '"') else ""} \
      ~{if defined(data_report_path) then ("--data-report-path " +  '"' + data_report_path + '"') else ""} \
      ~{if defined(images_directory) then ("--images-directory " +  '"' + images_directory + '"') else ""} \
      ~{if defined(sequencing_summary_one_d_sqr_source) then ("--sequencing-summary-1dsqr-source " +  '"' + sequencing_summary_one_d_sqr_source + '"') else ""} \
      ~{if (barcoding) then "--barcoding" else ""} \
      ~{if defined(barcodes) then ("--barcodes " +  '"' + barcodes + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/toulligqc:2.0.1--pyhdfd78af_0"
  }
  parameter_meta {
    sequencing_summary_source: "Basecaller sequencing summary source"
    telemetry_source: "Basecaller telemetry file source"
    fast_five_source: "Fast5 file source (necessary if no telemetry file)"
    report_name: "Report name"
    output_directory: "Output directory"
    html_report_path: "Output HTML report"
    data_report_path: "Output data report"
    images_directory: "Images directory"
    sequencing_summary_one_d_sqr_source: "Basecaller 1dsq summary source"
    barcoding: "Option for barcode usage"
    barcodes: "Coma separated barcode list"
    quiet: "Quiet mode"
    force: "Force overwriting of existing files"
    v_two_dot_zero_dot_one: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}