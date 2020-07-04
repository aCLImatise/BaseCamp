version 1.0

task Bam2cfg.pl {
  input {
    Int? minimum_mapping_quality
    Boolean? using_mapping_quality
    Boolean? minimal_mean_insert
    Boolean? change_default_system
    Float? cutoff_unit_standard
    Int? number_required_estimate
    Float? cutoff_coefficients_variation
    String? two_column_lib
    Int? number_bins_histogram
    Boolean? output_mapping_distribution
    Boolean? options
    Boolean? more_options
  }
  command <<<
    bam2cfg.pl \
      ~{if defined(minimum_mapping_quality) then ("-q " +  '"' + minimum_mapping_quality + '"') else ""} \
      ~{true="-m" false="" using_mapping_quality} \
      ~{true="-s" false="" minimal_mean_insert} \
      ~{true="-C" false="" change_default_system} \
      ~{if defined(cutoff_unit_standard) then ("-c " +  '"' + cutoff_unit_standard + '"') else ""} \
      ~{if defined(number_required_estimate) then ("-n " +  '"' + number_required_estimate + '"') else ""} \
      ~{if defined(cutoff_coefficients_variation) then ("-v " +  '"' + cutoff_coefficients_variation + '"') else ""} \
      ~{if defined(two_column_lib) then ("-f " +  '"' + two_column_lib + '"') else ""} \
      ~{if defined(number_bins_histogram) then ("-b " +  '"' + number_bins_histogram + '"') else ""} \
      ~{true="-g" false="" output_mapping_distribution} \
      ~{true="-OPTIONS" false="" options} \
      ~{true="-MORE_OPTIONS" false="" more_options}
  >>>
  parameter_meta {
    minimum_mapping_quality: "Minimum mapping quality [35]"
    using_mapping_quality: "Using mapping quality instead of alternative mapping quality"
    minimal_mean_insert: "Minimal mean insert size [50]"
    change_default_system: "Change default system from Illumina to SOLiD"
    cutoff_unit_standard: "Cutoff in unit of standard deviation [4]"
    number_required_estimate: "Number of observation required to estimate mean and s.d. insert size [10000]"
    cutoff_coefficients_variation: "Cutoff on coefficients of variation [1]"
    two_column_lib: "A two column tab-delimited text file (RG, LIB) specify the RG=>LIB mapping, useful when BAM header is incomplete"
    number_bins_histogram: "Number of bins in the histogram [50] "
    output_mapping_distribution: "Output mapping flag distribution"
    options: ""
    more_options: ""
  }
}