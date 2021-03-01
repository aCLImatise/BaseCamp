version 1.0

task RgthintEstimation {
  input {
    Directory? organism
    String? bias_type
    File? reads_file
    File? regions_file
    Int? downstream_ext
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
      ~{if defined(output_location) then ("--output-location " +  '"' + output_location + '"') else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    organism: "Organism considered on the analysis. Must have been\\nsetup in the RGTDATA folder. Common choices are hg19,\\nhg38. mm9, and mm10. DEFAULT: hg19"
    bias_type: "The methods that used to estimate the bias table\\nAvailable options are: 'KMER', 'PWM' and 'VOM'.\\nDEFAULT: VOM"
    reads_file: "The BAM file containing aligned reads. DEFAULT: None"
    regions_file: "The BED file containing regions to estimate the bias.\\nDEFAULT: None"
    downstream_ext: "Size of k-mer for bias estimation. DEFAULT: 8"
    output_location: "Path where the output bias table files will be\\nwritten. DEFAULT: current directory"
    output_prefix: "The prefix for results files. DEFAULT: Bias\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_location = "${in_output_location}"
  }
}