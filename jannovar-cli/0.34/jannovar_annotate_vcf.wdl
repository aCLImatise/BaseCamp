version 1.0

task JannovarAnnotateVcf {
  input {
    String? input_vcf
    String? output_vcf
    String? database
    Int? interval
    String? pedigree_file
    Boolean? annotate_as_singleton_pedigree
    String? ref_fast_a
    String? dbsnp_vcf
    String? dbsnp_prefix
    String? ex_ac_vcf
    String? ex_ac_prefix
    String? g_nomad_exo_mes_vcf
    String? g_nomad_exo_mes_prefix
    String? g_nomad_genomes_vcf
    String? g_nomad_genomes_prefix
    String? uk_one_zero_k_vcf
    String? uk_one_zero_k_prefix
    String? gone_k_vcf
    String? gone_k_prefix
    String? clin_var_vcf
    String? clin_var_prefix
    String? cosmic_vcf
    String? cosmic_prefix
    Boolean? one_parent_gt_filtered_filters_affected
    Boolean? inheritance_an_no_use_filters
    String? d_bnsf_p_tsv
    String? d_bnsf_p_col_contig
    String? d_bnsf_p_col_position
    String? d_bnsf_p_prefix
    String? d_bnsf_p_columns
    String? bed_annotation
    String? vcf_annotation
    String? tsv_annotation
    Boolean? use_threshold_filters
    String? gt_thresh_filt_min_cov_het
    String? gt_thresh_filt_min_cov_hom_alt
    String? gt_thresh_filt_max_cov
    String? gt_thresh_filt_min_gq
    String? gt_thresh_filt_min_aaf_het
    String? gt_thresh_filt_max_aaf_het
    String? gt_thresh_filt_min_aaf_hom_alt
    String? gt_thresh_filt_max_aaf_hom_ref
    String? var_thresh_max_allele_freq_ad
    String? var_thresh_max_allele_freq_ar
    String? var_thresh_max_hom_alt_ex_ac
    String? var_thresh_max_hom_alt_gone_k
    Boolean? use_advanced_pedigree_filters
    String? de_novo_max_parent_ad_two
    Boolean? enable_off_target_filter
    Boolean? utr_is_off_target
    Boolean? intronic_splice_is_off_target
    Boolean? report_no_progress
    Boolean? verbose
    Boolean? very_verbose
    String? http_proxy
    String? https_proxy
    String? ftp_proxy
    String jan_novar_cli
    String annotate_vcf
  }
  command <<<
    jannovar annotate-vcf \
      ~{jan_novar_cli} \
      ~{annotate_vcf} \
      ~{if defined(input_vcf) then ("--input-vcf " +  '"' + input_vcf + '"') else ""} \
      ~{if defined(output_vcf) then ("--output-vcf " +  '"' + output_vcf + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if defined(pedigree_file) then ("--pedigree-file " +  '"' + pedigree_file + '"') else ""} \
      ~{true="--annotate-as-singleton-pedigree" false="" annotate_as_singleton_pedigree} \
      ~{if defined(ref_fast_a) then ("--ref-fasta " +  '"' + ref_fast_a + '"') else ""} \
      ~{if defined(dbsnp_vcf) then ("--dbsnp-vcf " +  '"' + dbsnp_vcf + '"') else ""} \
      ~{if defined(dbsnp_prefix) then ("--dbsnp-prefix " +  '"' + dbsnp_prefix + '"') else ""} \
      ~{if defined(ex_ac_vcf) then ("--exac-vcf " +  '"' + ex_ac_vcf + '"') else ""} \
      ~{if defined(ex_ac_prefix) then ("--exac-prefix " +  '"' + ex_ac_prefix + '"') else ""} \
      ~{if defined(g_nomad_exo_mes_vcf) then ("--gnomad-exomes-vcf " +  '"' + g_nomad_exo_mes_vcf + '"') else ""} \
      ~{if defined(g_nomad_exo_mes_prefix) then ("--gnomad-exomes-prefix " +  '"' + g_nomad_exo_mes_prefix + '"') else ""} \
      ~{if defined(g_nomad_genomes_vcf) then ("--gnomad-genomes-vcf " +  '"' + g_nomad_genomes_vcf + '"') else ""} \
      ~{if defined(g_nomad_genomes_prefix) then ("--gnomad-genomes-prefix " +  '"' + g_nomad_genomes_prefix + '"') else ""} \
      ~{if defined(uk_one_zero_k_vcf) then ("--uk10k-vcf " +  '"' + uk_one_zero_k_vcf + '"') else ""} \
      ~{if defined(uk_one_zero_k_prefix) then ("--uk10k-prefix " +  '"' + uk_one_zero_k_prefix + '"') else ""} \
      ~{if defined(gone_k_vcf) then ("--g1k-vcf " +  '"' + gone_k_vcf + '"') else ""} \
      ~{if defined(gone_k_prefix) then ("--g1k-prefix " +  '"' + gone_k_prefix + '"') else ""} \
      ~{if defined(clin_var_vcf) then ("--clinvar-vcf " +  '"' + clin_var_vcf + '"') else ""} \
      ~{if defined(clin_var_prefix) then ("--clinvar-prefix " +  '"' + clin_var_prefix + '"') else ""} \
      ~{if defined(cosmic_vcf) then ("--cosmic-vcf " +  '"' + cosmic_vcf + '"') else ""} \
      ~{if defined(cosmic_prefix) then ("--cosmic-prefix " +  '"' + cosmic_prefix + '"') else ""} \
      ~{true="--one-parent-gt-filtered-filters-affected" false="" one_parent_gt_filtered_filters_affected} \
      ~{true="--inheritance-anno-use-filters" false="" inheritance_an_no_use_filters} \
      ~{if defined(d_bnsf_p_tsv) then ("--dbnsfp-tsv " +  '"' + d_bnsf_p_tsv + '"') else ""} \
      ~{if defined(d_bnsf_p_col_contig) then ("--dbnsfp-col-contig " +  '"' + d_bnsf_p_col_contig + '"') else ""} \
      ~{if defined(d_bnsf_p_col_position) then ("--dbnsfp-col-position " +  '"' + d_bnsf_p_col_position + '"') else ""} \
      ~{if defined(d_bnsf_p_prefix) then ("--dbnsfp-prefix " +  '"' + d_bnsf_p_prefix + '"') else ""} \
      ~{if defined(d_bnsf_p_columns) then ("--dbnsfp-columns " +  '"' + d_bnsf_p_columns + '"') else ""} \
      ~{if defined(bed_annotation) then ("--bed-annotation " +  '"' + bed_annotation + '"') else ""} \
      ~{if defined(vcf_annotation) then ("--vcf-annotation " +  '"' + vcf_annotation + '"') else ""} \
      ~{if defined(tsv_annotation) then ("--tsv-annotation " +  '"' + tsv_annotation + '"') else ""} \
      ~{true="--use-threshold-filters" false="" use_threshold_filters} \
      ~{if defined(gt_thresh_filt_min_cov_het) then ("--gt-thresh-filt-min-cov-het " +  '"' + gt_thresh_filt_min_cov_het + '"') else ""} \
      ~{if defined(gt_thresh_filt_min_cov_hom_alt) then ("--gt-thresh-filt-min-cov-hom-alt " +  '"' + gt_thresh_filt_min_cov_hom_alt + '"') else ""} \
      ~{if defined(gt_thresh_filt_max_cov) then ("--gt-thresh-filt-max-cov " +  '"' + gt_thresh_filt_max_cov + '"') else ""} \
      ~{if defined(gt_thresh_filt_min_gq) then ("--gt-thresh-filt-min-gq " +  '"' + gt_thresh_filt_min_gq + '"') else ""} \
      ~{if defined(gt_thresh_filt_min_aaf_het) then ("--gt-thresh-filt-min-aaf-het " +  '"' + gt_thresh_filt_min_aaf_het + '"') else ""} \
      ~{if defined(gt_thresh_filt_max_aaf_het) then ("--gt-thresh-filt-max-aaf-het " +  '"' + gt_thresh_filt_max_aaf_het + '"') else ""} \
      ~{if defined(gt_thresh_filt_min_aaf_hom_alt) then ("--gt-thresh-filt-min-aaf-hom-alt " +  '"' + gt_thresh_filt_min_aaf_hom_alt + '"') else ""} \
      ~{if defined(gt_thresh_filt_max_aaf_hom_ref) then ("--gt-thresh-filt-max-aaf-hom-ref " +  '"' + gt_thresh_filt_max_aaf_hom_ref + '"') else ""} \
      ~{if defined(var_thresh_max_allele_freq_ad) then ("--var-thresh-max-allele-freq-ad " +  '"' + var_thresh_max_allele_freq_ad + '"') else ""} \
      ~{if defined(var_thresh_max_allele_freq_ar) then ("--var-thresh-max-allele-freq-ar " +  '"' + var_thresh_max_allele_freq_ar + '"') else ""} \
      ~{if defined(var_thresh_max_hom_alt_ex_ac) then ("--var-thresh-max-hom-alt-exac " +  '"' + var_thresh_max_hom_alt_ex_ac + '"') else ""} \
      ~{if defined(var_thresh_max_hom_alt_gone_k) then ("--var-thresh-max-hom-alt-g1k " +  '"' + var_thresh_max_hom_alt_gone_k + '"') else ""} \
      ~{true="--use-advanced-pedigree-filters" false="" use_advanced_pedigree_filters} \
      ~{if defined(de_novo_max_parent_ad_two) then ("--de-novo-max-parent-ad2 " +  '"' + de_novo_max_parent_ad_two + '"') else ""} \
      ~{true="--enable-off-target-filter" false="" enable_off_target_filter} \
      ~{true="--utr-is-off-target" false="" utr_is_off_target} \
      ~{true="--intronic-splice-is-off-target" false="" intronic_splice_is_off_target} \
      ~{true="--report-no-progress" false="" report_no_progress} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--very-verbose" false="" very_verbose} \
      ~{if defined(http_proxy) then ("--http-proxy " +  '"' + http_proxy + '"') else ""} \
      ~{if defined(https_proxy) then ("--https-proxy " +  '"' + https_proxy + '"') else ""} \
      ~{if defined(ftp_proxy) then ("--ftp-proxy " +  '"' + ftp_proxy + '"') else ""}
  >>>
  parameter_meta {
    input_vcf: "Path to input VCF file"
    output_vcf: "Path to output VCF file"
    database: "Path to database .ser file"
    interval: "Interval with regions to annotate (optional)"
    pedigree_file: "Pedigree file to use for Mendelian inheritance annotation"
    annotate_as_singleton_pedigree: "Annotate VCF file with single individual as singleton pedigree (singleton assumed to be affected)"
    ref_fast_a: "Path to FAI-indexed reference FASTA file, required for dbSNP/ExAC/UK10K-based annotation"
    dbsnp_vcf: "Path to dbSNP VCF file, activates dbSNP annotation"
    dbsnp_prefix: "Prefix for dbSNP annotations"
    ex_ac_vcf: "Path to ExAC VCF file, activates ExAC annotation"
    ex_ac_prefix: "Prefix for ExAC annotations"
    g_nomad_exo_mes_vcf: "Path to gnomAD exomes VCF file, activates gnomAD exomes annotation"
    g_nomad_exo_mes_prefix: "Prefix for ExgnomAD exomes AC annotations"
    g_nomad_genomes_vcf: "Path to gnomAD genomes VCF file, activates gnomAD genomes annotation"
    g_nomad_genomes_prefix: "Prefix for ExgnomAD genomes AC annotations"
    uk_one_zero_k_vcf: "Path to UK10K VCF file, activates UK10K annotation"
    uk_one_zero_k_prefix: "Prefix for UK10K annotations"
    gone_k_vcf: "Path to thousand genomes VCF file, activates thousand genomes annotation"
    gone_k_prefix: "Prefix for thousand genomes annotations"
    clin_var_vcf: "Path to ClinVar file, activates ClinVar annotation"
    clin_var_prefix: "Prefix for ClinVar annotations"
    cosmic_vcf: "Path to COSMIC file, activates COSMIC annotation"
    cosmic_prefix: "Prefix for COSMIC annotations"
    one_parent_gt_filtered_filters_affected: "If one parent's genotype is affected, apply OneParentGtFiltered filter to child"
    inheritance_an_no_use_filters: "Use filters in inheritance mode annotation"
    d_bnsf_p_tsv: "Patht to dbNSFP TSV file"
    d_bnsf_p_col_contig: "Column index of contig in dbNSFP"
    d_bnsf_p_col_position: "Column index of position in dbNSFP"
    d_bnsf_p_prefix: "Prefix for dbNSFP annotations"
    d_bnsf_p_columns: "Columns from dbDSFP file to use for annotation"
    bed_annotation: "Add BED file to use for annotating. The value must be of the format \"pathToBed:infoField:description[:colNo]\"."
    vcf_annotation: "Add VCF file to use for annotating. The value must be of the format \"pathToVfFile:prefix:field1,field2,field3\"."
    tsv_annotation: "Add TSV file to use for  annotating.  The  value  must be of the format \"pathToTsvFile:oneBasedOffset:colContig:colStart:colEnd:colRef(or=0):colAlt(or=0):isRefAnnotated(R=yes,A=no): colValue:fieldType:fieldName:fieldDescription:accumulationStrategy\"."
    use_threshold_filters: "Use threshold-based filters"
    gt_thresh_filt_min_cov_het: "Minimal coverage for het. call"
    gt_thresh_filt_min_cov_hom_alt: "Minimal coverage for hom. alt calls"
    gt_thresh_filt_max_cov: "Maximal coverage for a sample"
    gt_thresh_filt_min_gq: "Minimal genotype call quality"
    gt_thresh_filt_min_aaf_het: "Minimal het. call alternate allele fraction"
    gt_thresh_filt_max_aaf_het: "Maximal het. call alternate allele fraction"
    gt_thresh_filt_min_aaf_hom_alt: "Minimal hom. alt call alternate allele fraction"
    gt_thresh_filt_max_aaf_hom_ref: "Maximal hom. ref call alternate allele fraction"
    var_thresh_max_allele_freq_ad: "Maximal allele fraction for autosomal dominant inheritance mode"
    var_thresh_max_allele_freq_ar: "Maximal allele fraction for autosomal recessive inheritance mode"
    var_thresh_max_hom_alt_ex_ac: "Maximal count in homozygous state in ExAC before ignoring"
    var_thresh_max_hom_alt_gone_k: "Maximal count in homozygous state in ExAC before ignoring"
    use_advanced_pedigree_filters: "Use advanced pedigree-based filters (mainly useful for de novo variants)"
    de_novo_max_parent_ad_two: "Maximal support of alternative allele in parent for de novo variants."
    enable_off_target_filter: "Enable filter for on/off-target based on effect impact"
    utr_is_off_target: "Make UTR count as off-target (default is to count UTR as on-target)"
    intronic_splice_is_off_target: "Make intronic (non-consensus site) splice region count as off-target (default is to count as on-target)"
    report_no_progress: "Disable progress report, more quiet mode"
    verbose: "Enable verbose mode"
    very_verbose: "Enable very verbose mode"
    http_proxy: "Set HTTP proxy to use, if any"
    https_proxy: "Set HTTPS proxy to use, if any"
    ftp_proxy: "Set FTP proxy to use, if any"
    jan_novar_cli: ""
    annotate_vcf: ""
  }
}