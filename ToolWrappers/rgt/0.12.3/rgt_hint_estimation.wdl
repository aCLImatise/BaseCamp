version 1.0

task RgthintEstimation {
  input {
    Directory? organism
    String? bias_type
    File? reads_file
    File? regions_file
    Int? downstream_ext
    Int? upstream_ext
    Int? forward_shift
    Int? reverse_shift
    Int? k_nb
    File? output_location
    String? output_prefix
  }
  command <<<
    rgt_hint estimation \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(bias_type) then ("--bias-type " +  '"' + bias_type + '"') else ""} \
      ~{if defined(reads_file) then ("--reads-file " +  '"' + reads_file + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""} \
      ~{if defined(downstream_ext) then ("--downstream-ext " +  '"' + downstream_ext + '"') else ""} \
      ~{if defined(upstream_ext) then ("--upstream-ext " +  '"' + upstream_ext + '"') else ""} \
      ~{if defined(forward_shift) then ("--forward-shift " +  '"' + forward_shift + '"') else ""} \
      ~{if defined(reverse_shift) then ("--reverse-shift " +  '"' + reverse_shift + '"') else ""} \
      ~{if defined(k_nb) then ("--k-nb " +  '"' + k_nb + '"') else ""} \
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  parameter_meta {
    organism: "Organism considered on the analysis. Must have been\\nsetup in the RGTDATA folder. Common choices are hg19,\\nhg38. mm9, and mm10. DEFAULT: hg19"
    bias_type: "The methods that used to estimate the bias table\\nAvailable options are: 'KMER', 'PWM' and 'VOM'.\\nDEFAULT: VOM"
    reads_file: "The BAM file containing aligned reads. DEFAULT: None"
    regions_file: "The BED file containing regions to estimate the bias.\\nDEFAULT: None"
    downstream_ext: ""
    upstream_ext: ""
    forward_shift: ""
    reverse_shift: ""
    k_nb: "Size of k-mer for bias estimation. DEFAULT: 8"
    output_location: "Path where the output bias table files will be\\nwritten. DEFAULT: current directory"
    output_prefix: "The prefix for results files. DEFAULT: Bias\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_location = "${in_output_location}"
  }
}