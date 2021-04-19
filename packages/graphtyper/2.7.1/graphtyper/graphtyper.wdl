version 1.0

task Graphtyper {
  input {
    File? log
    String? verbose
    Boolean? v_verbose
    String graph_type_r
    String bam_shrink
    String call_variants_graph
    String check
    String construct
    String genotype
    String genotype_camo_u
    String genotype_hla
    String genotype_lr
    String genotype_sv
    String index
    String vcf_break_down
    String vcf_merge
  }
  command <<<
    graphtyper \
      ~{graph_type_r} \
      ~{bam_shrink} \
      ~{call_variants_graph} \
      ~{check} \
      ~{construct} \
      ~{genotype} \
      ~{genotype_camo_u} \
      ~{genotype_hla} \
      ~{genotype_lr} \
      ~{genotype_sv} \
      ~{index} \
      ~{vcf_break_down} \
      ~{vcf_merge} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (v_verbose) then "--vverbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/graphtyper:2.7.1--h655f165_0"
  }
  parameter_meta {
    log: "or -lvalue\\nSet path to log file."
    verbose: "Set to output verbose logging."
    v_verbose: "Set to output very verbose logging."
    graph_type_r: "USAGE"
    bam_shrink: "Run bamShrink."
    call_variants_graph: "Call variants of a graph."
    check: "Check a GraphTyper graph (useful for debugging)."
    construct: "Construct a graph."
    genotype: "Run the SNP/indel genotyping pipeline."
    genotype_camo_u: "(WIP) Run the camou SNP/indel genotyping pipeline."
    genotype_hla: "(WIP) Run the camou HLA genotyping pipeline."
    genotype_lr: "(WIP) Run the camou LR genotyping pipeline."
    genotype_sv: "Run the structural variant (SV) genotyping pipeline."
    index: "(deprecated) Index a graph."
    vcf_break_down: "Break down/decompose a VCF file."
    vcf_merge: "Merge VCF files."
  }
  output {
    File out_stdout = stdout()
  }
}