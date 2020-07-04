version 1.0

task ArticPlotAmpliconDepthDepthFiles {
  input {
    String? primer_scheme
    Boolean? sample_id
    String artic_plot_amplicon_depth
  }
  command <<<
    artic_plot_amplicon_depth depthFiles \
      ~{artic_plot_amplicon_depth} \
      ~{if defined(primer_scheme) then ("--primerScheme " +  '"' + primer_scheme + '"') else ""} \
      ~{true="--sampleID" false="" sample_id}
  >>>
  parameter_meta {
    primer_scheme: ""
    sample_id: ""
    artic_plot_amplicon_depth: ""
  }
}