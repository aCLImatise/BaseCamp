version 1.0

task FindcsRNATSSplPeakfiletss {
  input {
    String? o
    Directory? rna
    File? genome
    File? gtf
    Boolean? n_tag_threshold
    Boolean? size
    Boolean? include_single_exons
    Boolean? meta_gene
    Boolean? cpu
    Boolean? max_input_log_twofold
    Boolean? max_rna_log_twofold
    Boolean? mind_ist_diff
    Boolean? default_log_twofold
    Boolean? pseudo_count
    Boolean? local_fold_enrichment
    Boolean? no_filter_rna
    Boolean? sense_region
    Boolean? antisense_region
    Boolean? rna_region
    Boolean? stable_threshold
    Boolean? bi_threshold
    Boolean? dist
  }
  command <<<
    findcsRNATSS_pl peak_file___tss \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(rna) then ("-rna " +  '"' + rna + '"') else ""} \
      ~{if defined(genome) then ("-genome " +  '"' + genome + '"') else ""} \
      ~{if defined(gtf) then ("-gtf " +  '"' + gtf + '"') else ""} \
      ~{if (n_tag_threshold) then "-ntagThreshold" else ""} \
      ~{if (size) then "-size" else ""} \
      ~{if (include_single_exons) then "-includeSingleExons" else ""} \
      ~{if (meta_gene) then "-metagene" else ""} \
      ~{if (cpu) then "-cpu" else ""} \
      ~{if (max_input_log_twofold) then "-maxInputLog2Fold" else ""} \
      ~{if (max_rna_log_twofold) then "-maxRNALog2Fold" else ""} \
      ~{if (mind_ist_diff) then "-minDistDiff" else ""} \
      ~{if (default_log_twofold) then "-defaultLog2Fold" else ""} \
      ~{if (pseudo_count) then "-pseudoCount" else ""} \
      ~{if (local_fold_enrichment) then "-L" else ""} \
      ~{if (no_filter_rna) then "-noFilterRNA" else ""} \
      ~{if (sense_region) then "-senseRegion" else ""} \
      ~{if (antisense_region) then "-antisenseRegion" else ""} \
      ~{if (rna_region) then "-rnaRegion" else ""} \
      ~{if (stable_threshold) then "-stableThreshold" else ""} \
      ~{if (bi_threshold) then "-biThreshold" else ""} \
      ~{if (dist) then "-dist" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    o: "(*see note below)"
    rna: "(*see note below)"
    genome: "(HOMER genome identifier or FASTA file)"
    gtf: "(gene annotation, by default will use genome annotation if available)"
    n_tag_threshold: "<#> (minimum number of norm. tags per TSS cluster, default: 7)"
    size: "<#> (size of regions to check for significant TSS clusters, default: 150)"
    include_single_exons: "(include single exon genes for TP/FP calculations, default: only use multiexon genes)"
    meta_gene: "(Include a metagene plot of read distributions)"
    cpu: "<#> (max CPUs to use)"
    max_input_log_twofold: "<#> (maximum log2 fold enrichment vs. input or RNA, default: 30000000000)"
    max_rna_log_twofold: "<#> (maximum log2 fold enrichment vs. input or RNA, default: 30000000000)"
    mind_ist_diff: "<#> (minimum CDF difference to consider for TP/FP calculation, default: 0.15)"
    default_log_twofold: "<#> (if annotation-based TP/FP threshold calculation failes, default: 1)"
    pseudo_count: "<#> (number of normalizaed reads added to input/target read counts, default: 1.0)"
    local_fold_enrichment: "<#> (local fold enrichment used for initial TSS identification, default: 2)"
    no_filter_rna: "(only use RNAseq for stability calculations, not for filtering putative TSS)"
    sense_region: "<#>,<#> (Size of region to calculate RNA/input read density,default: -100,500)"
    antisense_region: "<#>,<#> (Size of region to calculate RNA/input read density,default: -500,100)"
    rna_region: "<#>,<#> (Size of region to calculate RNA coverage for FP identification,default: -150,-10)"
    stable_threshold: "<#> (minimum RNAseq read density for stable transcript, def: 2)"
    bi_threshold: "<#> (minimum divergent csRNAseq signal for bi/divergent TSS, def: 2)"
    dist: "<#> (minimum distance from annotated TSS to assign 'distal' annotation, def: 500)"
  }
  output {
    File out_stdout = stdout()
  }
}