version 1.0

task GridssSomaticFilter {
  input {
    Boolean? gc
    Boolean? opts
    Boolean? pond_ir
    Boolean? ref
    Boolean? gridss_vcf
    Boolean? high_confidence_somatic
    Boolean? full_output
    Boolean? plot_dir
    Boolean? normal_ordinal
    Boolean? tumour_ordinal
    Boolean? script_dir
  }
  command <<<
    gridss_somatic_filter \
      ~{true="--gc" false="" gc} \
      ~{true="--opts" false="" opts} \
      ~{true="--pondir" false="" pond_ir} \
      ~{true="--ref" false="" ref} \
      ~{true="--input" false="" gridss_vcf} \
      ~{true="--output" false="" high_confidence_somatic} \
      ~{true="--fulloutput" false="" full_output} \
      ~{true="--plotdir" false="" plot_dir} \
      ~{true="--normalordinal" false="" normal_ordinal} \
      ~{true="--tumourordinal" false="" tumour_ordinal} \
      ~{true="--scriptdir" false="" script_dir}
  >>>
  parameter_meta {
    gc: "Perform garbage collection after freeing of large objects."
    opts: "RDS file containing argument values"
    pond_ir: "Directory containing Panel Of Normal bed/bedpe used to filter FP somatic events. Use gridss.GeneratePonBedpe to generate the PON."
    ref: "Reference genome to use. Must be a valid installed BSgenome package [default: ]"
    gridss_vcf: "GRIDSS VCF"
    high_confidence_somatic: "High confidence somatic subset"
    full_output: "Full call set excluding obviously germline call."
    plot_dir: "Output directory for plots [default: ]"
    normal_ordinal: "Ordinal of matching normal sample in the VCF [default: 1]"
    tumour_ordinal: "Ordinal of tumour sample(s) in the VCF. Defaults to all samples not listed as matched normals"
    script_dir: "Path to libgridss.R script [default: ./]"
  }
}