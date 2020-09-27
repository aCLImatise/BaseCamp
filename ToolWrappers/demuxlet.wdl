version 1.0

task Demuxlet {
  input {
    Boolean? sam
    Boolean? tag_group
    Boolean? tag_umi
    Boolean? vcf
    Boolean? field
    Boolean? geno_error
    Boolean? min_mac
    Boolean? min_call_rate
    Boolean? sm
    Boolean? sm_list
    File? out
    Boolean? alpha
    Boolean? write_pair
    Boolean? doublet_prior
    Boolean? sam_verbose
    Boolean? vcf_verbose
    Boolean? cap_bq
    Boolean? min_bq
    Boolean? min_mq
    Boolean? min_td
    Boolean? excl_flag
    Boolean? group_list
    Boolean? min_total
    Boolean? min_uniq
    Boolean? min_snp
  }
  command <<<
    demuxlet \
      ~{if (sam) then "--sam" else ""} \
      ~{if (tag_group) then "--tag-group" else ""} \
      ~{if (tag_umi) then "--tag-UMI" else ""} \
      ~{if (vcf) then "--vcf" else ""} \
      ~{if (field) then "--field" else ""} \
      ~{if (geno_error) then "--geno-error" else ""} \
      ~{if (min_mac) then "--min-mac" else ""} \
      ~{if (min_call_rate) then "--min-callrate" else ""} \
      ~{if (sm) then "--sm" else ""} \
      ~{if (sm_list) then "--sm-list" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (alpha) then "--alpha" else ""} \
      ~{if (write_pair) then "--write-pair" else ""} \
      ~{if (doublet_prior) then "--doublet-prior" else ""} \
      ~{if (sam_verbose) then "--sam-verbose" else ""} \
      ~{if (vcf_verbose) then "--vcf-verbose" else ""} \
      ~{if (cap_bq) then "--cap-BQ" else ""} \
      ~{if (min_bq) then "--min-BQ" else ""} \
      ~{if (min_mq) then "--min-MQ" else ""} \
      ~{if (min_td) then "--min-TD" else ""} \
      ~{if (excl_flag) then "--excl-flag" else ""} \
      ~{if (group_list) then "--group-list" else ""} \
      ~{if (min_total) then "--min-total" else ""} \
      ~{if (min_uniq) then "--min-uniq" else ""} \
      ~{if (min_snp) then "--min-snp" else ""}
  >>>
  parameter_meta {
    sam: "[STR: ]             : Input SAM/BAM/CRAM file. Must be sorted by coordinates and indexed"
    tag_group: "[STR: CB]           : Tag representing readgroup or cell barcodes, in the case to partition the BAM file into multiple groups. For 10x genomics, use CB"
    tag_umi: "[STR: UB]           : Tag representing UMIs. For 10x genomiucs, use UB"
    vcf: "[STR: ]             : Input VCF/BCF file, containing the individual genotypes (GT), posterior probability (GP), or genotype likelihood (PL)"
    field: "[STR: GP]           : FORMAT field to extract the genotype, likelihood, or posterior from"
    geno_error: "[FLT: 0.01]         : Genotype error rate (must be used with --field GT)"
    min_mac: "[INT: 1]            : Minimum minor allele frequency"
    min_call_rate: "[FLT: 0.50]         : Minimum call rate"
    sm: "[V_STR: ]           : List of sample IDs to compare to (default: use all)"
    sm_list: "[STR: ]             : File containing the list of sample IDs to compare"
    out: "[STR: ]             : Output file prefix"
    alpha: "[V_FLT: ]           : Grid of alpha to search for (default is 0, 0.5)"
    write_pair: "[FLG: OFF]          : Writing the (HUGE) pair file"
    doublet_prior: "[FLT: 0.50]         : Prior of doublet"
    sam_verbose: "[INT: 1000000]      : Verbose message frequency for SAM/BAM/CRAM"
    vcf_verbose: "[INT: 10000]        : Verbose message frequency for VCF/BCF"
    cap_bq: "[INT: 40]           : Maximum base quality (higher BQ will be capped)"
    min_bq: "[INT: 13]           : Minimum base quality to consider (lower BQ will be skipped)"
    min_mq: "[INT: 20]           : Minimum mapping quality to consider (lower MQ will be ignored)"
    min_td: "[INT: 0]            : Minimum distance to the tail (lower will be ignored)"
    excl_flag: "[INT: 3844]         : SAM/BAM FLAGs to be excluded"
    group_list: "[STR: ]             : List of tag readgroup/cell barcode to consider in this run. All other barcodes will be ignored. This is useful for parallelized run"
    min_total: "[INT: 0]            : Minimum number of total reads for a droplet/cell to be considered"
    min_uniq: "[INT: 0]            : Minimum number of unique reads (determined by UMI/SNP pair) for a droplet/cell to be considered"
    min_snp: "[INT: 0]            : Minimum number of SNPs with coverage for a droplet/cell to be considered"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}