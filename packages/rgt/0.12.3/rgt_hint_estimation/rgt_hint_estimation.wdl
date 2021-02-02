version 1.0

task RgthintEstimation {
  input {
    String? organism
    String? bias_type
    File? reads_file
    File? regions_file
  }
  command <<<
    rgt_hint estimation \
      ~{if defined(organism) then ("--organism " +  '"' + organism + '"') else ""} \
      ~{if defined(bias_type) then ("--bias-type " +  '"' + bias_type + '"') else ""} \
      ~{if defined(reads_file) then ("--reads-file " +  '"' + reads_file + '"') else ""} \
      ~{if defined(regions_file) then ("--regions-file " +  '"' + regions_file + '"') else ""}
  >>>
  parameter_meta {
    organism: "Organism considered on the analysis. Must have been"
    bias_type: "The methods that used to estimate the bias table"
    reads_file: "The BAM file containing aligned reads. DEFAULT: None"
    regions_file: "The BED file containing regions to estimate the bias."
  }
  output {
    File out_stdout = stdout()
  }
}