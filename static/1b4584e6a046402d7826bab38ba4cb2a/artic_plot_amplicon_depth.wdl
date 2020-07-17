version 1.0

task ArticPlotAmpliconDepth {
  input {
    String? primer_scheme
    String? sample_id
    String? outfile_prefix
  }
  command <<<
    artic_plot_amplicon_depth \
      ~{if defined(primer_scheme) then ("--primerScheme " +  '"' + primer_scheme + '"') else ""} \
      ~{if defined(sample_id) then ("--sampleID " +  '"' + sample_id + '"') else ""} \
      ~{if defined(outfile_prefix) then ("--outFilePrefix " +  '"' + outfile_prefix + '"') else ""}
  >>>
  parameter_meta {
    primer_scheme: "the ARTIC primer scheme"
    sample_id: "the sample ID for the provided depth files"
    outfile_prefix: "the prefix to give the output plot file"
  }
}