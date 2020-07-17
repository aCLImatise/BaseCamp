version 1.0

task RgtHintEstimation {
  input {
    Int? k_nb
    File? output_location
    String? output_prefix
    String? organism
    String? bias_type
  }
  command <<<
    rgt-hint estimation \
      ~{if defined(k_nb) then ("--k-nb " +  '"' + k_nb + '"') else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(bias_type) then ("--bias-type " +  '"' + bias_type + '"') else ""}
  >>>
  parameter_meta {
    k_nb: "Size of k-mer for bias estimation. DEFAULT: 8"
    output_location: "Path where the output bias table files will be written. DEFAULT: current directory"
    output_prefix: "The prefix for results files. DEFAULT: Bias"
    organism: ""
    bias_type: ""
  }
}