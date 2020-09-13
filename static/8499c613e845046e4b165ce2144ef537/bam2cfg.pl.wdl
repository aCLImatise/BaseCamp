version 1.0

task Bam2cfgpl {
  input {
    Int? minimum_mapping_quality
    Boolean? using_mapping_quality
    Boolean? minimal_mean_size
    Boolean? change_default_system
    Float? cutoff_unit_standard
    Int? number_required_estimate
    Float? cutoff_coefficients_variation
    File? two_column_text
    Int? number_bins_histogram
    Boolean? output_mapping_flag
    Boolean? more_options
    Boolean? options
  }
  command <<<
    bam2cfg_pl \
      ~{if defined(minimum_mapping_quality) then ("-q " +  '"' + minimum_mapping_quality + '"') else ""} \
      ~{if (using_mapping_quality) then "-m" else ""} \
      ~{if (minimal_mean_size) then "-s" else ""} \
      ~{if (change_default_system) then "-C" else ""} \
      ~{if defined(cutoff_unit_standard) then ("-c " +  '"' + cutoff_unit_standard + '"') else ""} \
      ~{if defined(number_required_estimate) then ("-n " +  '"' + number_required_estimate + '"') else ""} \
      ~{if defined(cutoff_coefficients_variation) then ("-v " +  '"' + cutoff_coefficients_variation + '"') else ""} \
      ~{if defined(two_column_text) then ("-f " +  '"' + two_column_text + '"') else ""} \
      ~{if defined(number_bins_histogram) then ("-b " +  '"' + number_bins_histogram + '"') else ""} \
      ~{if (output_mapping_flag) then "-g" else ""} \
      ~{if (more_options) then "-MORE_OPTIONS" else ""} \
      ~{if (options) then "-OPTIONS" else ""}
  >>>
  parameter_meta {
    minimum_mapping_quality: "Minimum mapping quality [35]"
    using_mapping_quality: "Using mapping quality instead of alternative mapping quality"
    minimal_mean_size: "Minimal mean insert size [50]"
    change_default_system: "Change default system from Illumina to SOLiD"
    cutoff_unit_standard: "Cutoff in unit of standard deviation [4]"
    number_required_estimate: "Number of observation required to estimate mean and s.d. insert size [10000]"
    cutoff_coefficients_variation: "Cutoff on coefficients of variation [1]"
    two_column_text: "A two column tab-delimited text file (RG, LIB) specify the RG=>LIB mapping, useful when BAM header is incomplete"
    number_bins_histogram: "Number of bins in the histogram [50]"
    output_mapping_flag: "Output mapping flag distribution"
    more_options: ""
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}