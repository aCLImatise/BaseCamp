version 1.0

task GrmpyVcfMerge.py {
  input {
    String? input_vcf_file
    String? gr_mpy
    String? output_file_name
    String? log_file
    Boolean? verbose
    Boolean? quiet
    Boolean? debug
    String multi_grmpydotpy
  }
  command <<<
    grmpy-vcf-merge.py \
      ~{multi_grmpydotpy} \
      ~{if defined(input_vcf_file) then ("--input " +  '"' + input_vcf_file + '"') else ""} \
      ~{if defined(gr_mpy) then ("--grmpy " +  '"' + gr_mpy + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--debug" false="" debug}
  >>>
  parameter_meta {
    input_vcf_file: "Input VCF file of variants."
    gr_mpy: "JSON output from multigrmpy.py / grmpy"
    output_file_name: "Output file name."
    log_file: "Write logging information into file rather than to stderr"
    verbose: "Raise logging level from warning to info."
    quiet: "Set logging level to output errors only."
    debug: "Log debug level events."
    multi_grmpydotpy: ""
  }
}