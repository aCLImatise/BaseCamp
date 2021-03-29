version 1.0

task VarlociraptorEstimateTmb {
  input {
    Int? coding_genome_size
    String? plot_mode
    String? somatic_tumor_events
    String? tumor_sample
    Int calls_dot_bcf_vertical_line_vg_two_svg
  }
  command <<<
    varlociraptor estimate tmb \
      ~{calls_dot_bcf_vertical_line_vg_two_svg} \
      ~{if defined(coding_genome_size) then ("--coding-genome-size " +  '"' + coding_genome_size + '"') else ""} \
      ~{if defined(plot_mode) then ("--plot-mode " +  '"' + plot_mode + '"') else ""} \
      ~{if defined(somatic_tumor_events) then ("--somatic-tumor-events " +  '"' + somatic_tumor_events + '"') else ""} \
      ~{if defined(tumor_sample) then ("--tumor-sample " +  '"' + tumor_sample + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varlociraptor:2.6.5--hd5fb649_0"
  }
  parameter_meta {
    coding_genome_size: "Size (in bases) of the covered coding genome. [default: 3e7]"
    plot_mode: "How to plot (as stratified curve or as histogram). [possible values: hist, curve]"
    somatic_tumor_events: "...\\nEvents to consider (e.g. SOMATIC_TUMOR). [default: SOMATIC_TUMOR]"
    tumor_sample: "Name of the tumor sample in the given VCF/BCF. [default: tumor]\\n"
    calls_dot_bcf_vertical_line_vg_two_svg: ""
  }
  output {
    File out_stdout = stdout()
  }
}