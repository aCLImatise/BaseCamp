version 1.0

task VarlociraptorEstimateTmb {
  input {
    String? tumor_sample
    String? coding_genome_size
    String? somatic_tumor_events
    String calls_dot_bcf_vertical_line_vg_two_svg
    String tmb_dot_svg
  }
  command <<<
    varlociraptor estimate tmb \
      ~{calls_dot_bcf_vertical_line_vg_two_svg} \
      ~{tmb_dot_svg} \
      ~{if defined(tumor_sample) then ("--tumor-sample " +  '"' + tumor_sample + '"') else ""} \
      ~{if defined(coding_genome_size) then ("--coding-genome-size " +  '"' + coding_genome_size + '"') else ""} \
      ~{if defined(somatic_tumor_events) then ("--somatic-tumor-events " +  '"' + somatic_tumor_events + '"') else ""}
  >>>
  parameter_meta {
    tumor_sample: "Name of the tumor sample in the given VCF/BCF. [default: tumor]"
    coding_genome_size: ""
    somatic_tumor_events: ""
    calls_dot_bcf_vertical_line_vg_two_svg: ""
    tmb_dot_svg: ""
  }
}