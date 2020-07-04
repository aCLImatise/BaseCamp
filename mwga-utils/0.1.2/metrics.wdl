version 1.0

task Metrics {
  input {
    String? prefix_output_wig
    String? manually_specify_number
    String? number_threads_use
    String maf_file
  }
  command <<<
    metrics \
      ~{maf_file} \
      ~{if defined(prefix_output_wig) then ("-p " +  '"' + prefix_output_wig + '"') else ""} \
      ~{if defined(manually_specify_number) then ("-n " +  '"' + manually_specify_number + '"') else ""} \
      ~{if defined(number_threads_use) then ("-t " +  '"' + number_threads_use + '"') else ""}
  >>>
  parameter_meta {
    prefix_output_wig: "Prefix for output wig files [default: metrics]"
    manually_specify_number: "Manually specify the number of assemblies in the alignment; if not, it is computed from the MAF [default: 0]"
    number_threads_use: "Number of threads to use [default: 1]."
    maf_file: ""
  }
}