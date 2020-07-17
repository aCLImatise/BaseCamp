version 1.0

task GatkToGvcf {
  input {
    String? chrom_depth_file
    String? max_depth_factor
    String? min_gq_x
    String? min_mq
    String? min_qd
    String? max_site_fs
    String? max_hap_score
    String? min_m_qrs
    String? min_site_r_prs
    String? max_in_del_fs
    String? min_in_del_r_prs
    Boolean? no_default_filters
    String? min_block_able_non_ref
    Boolean? skip_header
    String? block_range_factor
    String? block_label
    String? block_stats
    Boolean? no_block_compression
    String all_sites
    String gvc_f
  }
  command <<<
    gatk_to_gvcf \
      ~{all_sites} \
      ~{gvc_f} \
      ~{if defined(chrom_depth_file) then ("--chrom-depth-file " +  '"' + chrom_depth_file + '"') else ""} \
      ~{if defined(max_depth_factor) then ("--max-depth-factor " +  '"' + max_depth_factor + '"') else ""} \
      ~{if defined(min_gq_x) then ("--min-gqx " +  '"' + min_gq_x + '"') else ""} \
      ~{if defined(min_mq) then ("--min-mq " +  '"' + min_mq + '"') else ""} \
      ~{if defined(min_qd) then ("--min-qd " +  '"' + min_qd + '"') else ""} \
      ~{if defined(max_site_fs) then ("--max-site-fs " +  '"' + max_site_fs + '"') else ""} \
      ~{if defined(max_hap_score) then ("--max-hapscore " +  '"' + max_hap_score + '"') else ""} \
      ~{if defined(min_m_qrs) then ("--min-mqrs " +  '"' + min_m_qrs + '"') else ""} \
      ~{if defined(min_site_r_prs) then ("--min-site-rprs " +  '"' + min_site_r_prs + '"') else ""} \
      ~{if defined(max_in_del_fs) then ("--max-indel-fs " +  '"' + max_in_del_fs + '"') else ""} \
      ~{if defined(min_in_del_r_prs) then ("--min-indel-rprs " +  '"' + min_in_del_r_prs + '"') else ""} \
      ~{true="--no-default-filters" false="" no_default_filters} \
      ~{if defined(min_block_able_non_ref) then ("--min-blockable-nonref " +  '"' + min_block_able_non_ref + '"') else ""} \
      ~{true="--skip-header" false="" skip_header} \
      ~{if defined(block_range_factor) then ("--block-range-factor " +  '"' + block_range_factor + '"') else ""} \
      ~{if defined(block_label) then ("--block-label " +  '"' + block_label + '"') else ""} \
      ~{if defined(block_stats) then ("--block-stats " +  '"' + block_stats + '"') else ""} \
      ~{true="--no-block-compression" false="" no_block_compression}
  >>>
  parameter_meta {
    chrom_depth_file: "Read mean depth for each chromosome from file,  and use these values for maximum site depth  filteration. File should contain one line per  chromosome, where each line begins with:  \"chrom_name<TAB>depth\" (default: no chrom depth filtration)"
    max_depth_factor: "(=3.0) If a chrom depth file is supplied then loci  with depth exceeding the mean chrom depth times this value are filtered"
    min_gq_x: "(=20.0)         Minimum locus GQX"
    min_mq: "(=20.0)          Minimum site MQ"
    min_qd: "(=3.73)          Minimum locus QD"
    max_site_fs: "(=60.0)     Maximum site FS"
    max_hap_score: "(=13.0)    Maximum site HaplotypeScore"
    min_m_qrs: "(=-12.5)       Minimum site MQRankSum"
    min_site_r_prs: "(=-2.386) Minimum site ReadPosRankSum"
    max_in_del_fs: "(=200.0)   Maximum indel FS"
    min_in_del_r_prs: "(=-20.0) Minimum indel ReadPosRankSum"
    no_default_filters: "Clear all default filters. Any individual  filter threshold changes above will still be in effect"
    min_block_able_non_ref: "(=0.2) If AD present, only compress non-variant  site if 1-AD[0]/DP < value"
    skip_header: "Write gVCF output without header"
    block_range_factor: "(=0.3)       Non-variant blocks are restricted to  range [x,y], y <= max(x+3,x*(1+block-ra nge-factor))"
    block_label: "(=BLOCKAVG_min30p3a) VCF INFO key used to annotate  compressed non-variant blocks"
    block_stats: "Write non-variant block stats to the  file"
    no_block_compression: "Turn off block compression"
    all_sites: ""
    gvc_f: ""
  }
}