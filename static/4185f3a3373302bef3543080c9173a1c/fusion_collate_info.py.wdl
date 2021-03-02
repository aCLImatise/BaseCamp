version 1.0

task FusionCollateInfopy {
  input {
    File? cds_gff
    String? total_fl_count
    String? config
    Int? min_fl_count
    Int? min_breakpoint_dist_kb
    Boolean? include_mt_genes
    String fusion_prefix
    String class_filename
    String gene_pred_filename
    String _genome_genome
  }
  command <<<
    fusion_collate_info_py \
      ~{fusion_prefix} \
      ~{class_filename} \
      ~{gene_pred_filename} \
      ~{_genome_genome} \
      ~{if defined(cds_gff) then ("--cds_gff " +  '"' + cds_gff + '"') else ""} \
      ~{if defined(total_fl_count) then ("--total_fl_count " +  '"' + total_fl_count + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(min_fl_count) then ("--min_fl_count " +  '"' + min_fl_count + '"') else ""} \
      ~{if defined(min_breakpoint_dist_kb) then ("--min_breakpoint_dist_kb " +  '"' + min_breakpoint_dist_kb + '"') else ""} \
      ~{if (include_mt_genes) then "--include_Mt_genes" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0"
  }
  parameter_meta {
    cds_gff: "CDS GFF filename (optional)"
    total_fl_count: "(optional) Total FL count used to normalize fusion\\ncounts"
    config: "(optional) Additional information to include in the"
    min_fl_count: "Minimum FL count (default: 2)"
    min_breakpoint_dist_kb: "Minimum breakpoint distance, in kb (default: 10[kb])"
    include_mt_genes: "Include Mt genes (default: off)"
    fusion_prefix: "Prefix for fusion files (ex: my.fusion)"
    class_filename: "SQANTI3 classification filename"
    gene_pred_filename: "GenePred filename used by SQANTI3 classification"
    _genome_genome: "--genome GENOME       (optional) Reference genome"
  }
  output {
    File out_stdout = stdout()
  }
}