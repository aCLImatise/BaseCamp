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
    Directory? plot_dir
    Boolean? normal_ordinal
    Boolean? tumour_ordinal
    Boolean? script_dir
  }
  command <<<
    gridss_somatic_filter \
      ~{if (gc) then "--gc" else ""} \
      ~{if (opts) then "--opts" else ""} \
      ~{if (pond_ir) then "--pondir" else ""} \
      ~{if (ref) then "--ref" else ""} \
      ~{if (gridss_vcf) then "--input" else ""} \
      ~{if (high_confidence_somatic) then "--output" else ""} \
      ~{if (full_output) then "--fulloutput" else ""} \
      ~{if (plot_dir) then "--plotdir" else ""} \
      ~{if (normal_ordinal) then "--normalordinal" else ""} \
      ~{if (tumour_ordinal) then "--tumourordinal" else ""} \
      ~{if (script_dir) then "--scriptdir" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gc: "Perform garbage collection after freeing of\\nlarge objects."
    opts: "RDS file containing argument values"
    pond_ir: "Directory containing Panel Of Normal bed/bedpe\\nused to filter FP somatic events. Use\\ngridss.GeneratePonBedpe to generate the PON."
    ref: "Reference genome to use. Must be a valid\\ninstalled BSgenome package [default: ]"
    gridss_vcf: "GRIDSS VCF"
    high_confidence_somatic: "High confidence somatic subset"
    full_output: "Full call set excluding obviously germline call."
    plot_dir: "Output directory for plots [default: ]"
    normal_ordinal: "Ordinal of matching normal sample in the VCF\\n[default: 1]"
    tumour_ordinal: "Ordinal of tumour sample(s) in the VCF. Defaults\\nto all samples not listed as matched normals"
    script_dir: "Path to libgridss.R script [default: ./]"
  }
  output {
    File out_stdout = stdout()
    Directory out_plot_dir = "${in_plot_dir}"
  }
}