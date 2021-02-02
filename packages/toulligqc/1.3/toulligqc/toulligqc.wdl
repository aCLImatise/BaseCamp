version 1.0

task Toulligqc {
  input {
    File? conf_file
    String? report_name
    Int? fast_five_source
    String? sequencing_summary_source
    Int? sequencing_summary_one_d_sqr_source
    String? albacore_pipeline_source
    File? fast_q_source
    File? telemetry_source
    Directory? output_directory
    Boolean? barcoding
    File? sample_sheet_file
    String? barcodes
    Boolean? quiet
  }
  command <<<
    toulligqc \
      ~{if defined(conf_file) then ("--conf-file " +  '"' + conf_file + '"') else ""} \
      ~{if defined(report_name) then ("--report-name " +  '"' + report_name + '"') else ""} \
      ~{if defined(fast_five_source) then ("--fast5-source " +  '"' + fast_five_source + '"') else ""} \
      ~{if defined(sequencing_summary_source) then ("--sequencing-summary-source " +  '"' + sequencing_summary_source + '"') else ""} \
      ~{if defined(sequencing_summary_one_d_sqr_source) then ("--sequencing-summary-1dsqr-source " +  '"' + sequencing_summary_one_d_sqr_source + '"') else ""} \
      ~{if defined(albacore_pipeline_source) then ("--albacore-pipeline-source " +  '"' + albacore_pipeline_source + '"') else ""} \
      ~{if defined(fast_q_source) then ("--fastq-source " +  '"' + fast_q_source + '"') else ""} \
      ~{if defined(telemetry_source) then ("--telemetry-source " +  '"' + telemetry_source + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if (barcoding) then "--barcoding" else ""} \
      ~{if defined(sample_sheet_file) then ("--samplesheet-file " +  '"' + sample_sheet_file + '"') else ""} \
      ~{if defined(barcodes) then ("--barcodes " +  '"' + barcodes + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    conf_file: "Specify config file"
    report_name: "Report name"
    fast_five_source: "Fast5 file source"
    sequencing_summary_source: "Basecaller sequencing summary source"
    sequencing_summary_one_d_sqr_source: "Basecaller 1dsq summary source"
    albacore_pipeline_source: "Albacore pipeline log source"
    fast_q_source: "Fastq file source"
    telemetry_source: "Telemetry file source"
    output_directory: "Output directory"
    barcoding: "Barcode usage"
    sample_sheet_file: "Path to sample sheet file"
    barcodes: "Coma separated barcode list"
    quiet: "Quiet mode"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}