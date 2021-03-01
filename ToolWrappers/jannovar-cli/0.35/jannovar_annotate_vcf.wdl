version 1.0

task JannovarAnnotatevcf {
  input {
    String? d
    File? input_vcf
    File? output_vcf
    File? database
    String? interval
    File? pedigree_file
    File? ref_fast_a
    File? dbsnp_vcf
    String? dbsnp_prefix
    File? ex_ac_vcf
    String? ex_ac_prefix
    File? g_nomad_exo_mes_vcf
    String? g_nomad_exo_mes_prefix
    File? g_nomad_genomes_vcf
    String? g_nomad_genomes_prefix
    Int? uk_one_zero_k_vcf
    Int? uk_one_zero_k_prefix
    Int? gone_k_vcf
    Int? gone_k_prefix
    File? clin_var_vcf
    String? clin_var_prefix
    File? cosmic_vcf
    String? cosmic_prefix
    Boolean? inheritance_an_no_use_filters
    File? d_bnsf_p_tsv
    String? d_bnsf_p_col_contig
    String? d_bnsf_p_col_position
    String? d_bnsf_p_prefix
    File? d_bnsf_p_columns
    File? bed_annotation
    File? vcf_annotation
    File? tsv_annotation
    Boolean? use_threshold_filters
    Int? gt_thresh_filt_min_cov_het
    Int? gt_thresh_filt_min_cov_hom_alt
    Int? gt_thresh_filt_max_cov
    Int? gt_thresh_filt_min_gq
    Int? gt_thresh_filt_min_aaf_het
    Int? gt_thresh_filt_max_aaf_het
    Int? gt_thresh_filt_min_aaf_hom_alt
    Int? gt_thresh_filt_max_aaf_hom_ref
    Int? var_thresh_max_allele_freq_ad
    Int? var_thresh_max_allele_freq_ar
    Int? var_thresh_max_hom_alt_ex_ac
    Int? var_thresh_max_hom_alt_gone_k
    Int? de_novo_max_parent_ad_two
    Boolean? enable_off_target_filter
    Boolean? utr_is_off_target
    Boolean? intronic_splice_is_off_target
    Boolean? no_escape_ann_field
    Boolean? show_all
    Boolean? no_three_prime_shifting
    Boolean? three_letter_amino_acids
    Boolean? report_no_progress
    Boolean? verbose
    Boolean? very_verbose
    String? http_proxy
    String? https_proxy
    String? ftp_proxy
    String annotate
    String singleton
    String one_parents_genotype
    String use
  }
  command <<<
    jannovar annotate_vcf \
      ~{annotate} \
      ~{singleton} \
      ~{one_parents_genotype} \
      ~{use} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(input_vcf) then ("--input-vcf " +  '"' + input_vcf + '"') else ""} \
      ~{if defined(output_vcf) then ("--output-vcf " +  '"' + output_vcf + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(interval) then ("--interval " +  '"' + interval + '"') else ""} \
      ~{if defined(pedigree_file) then ("--pedigree-file " +  '"' + pedigree_file + '"') else ""} \
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
      ~{if (inheritance_an_no_use_filters) then "--inheritance-anno-use-filters" else ""} \
      ~{if defined(d_bnsf_p_tsv) then ("--dbnsfp-tsv " +  '"' + d_bnsf_p_tsv + '"') else ""} \
      ~{if defined(d_bnsf_p_col_contig) then ("--dbnsfp-col-contig " +  '"' + d_bnsf_p_col_contig + '"') else ""} \
      ~{if defined(d_bnsf_p_col_position) then ("--dbnsfp-col-position " +  '"' + d_bnsf_p_col_position + '"') else ""} \
      ~{if defined(d_bnsf_p_prefix) then ("--dbnsfp-prefix " +  '"' + d_bnsf_p_prefix + '"') else ""} \
      ~{if defined(d_bnsf_p_columns) then ("--dbnsfp-columns " +  '"' + d_bnsf_p_columns + '"') else ""} \
      ~{if defined(bed_annotation) then ("--bed-annotation " +  '"' + bed_annotation + '"') else ""} \
      ~{if defined(vcf_annotation) then ("--vcf-annotation " +  '"' + vcf_annotation + '"') else ""} \
      ~{if defined(tsv_annotation) then ("--tsv-annotation " +  '"' + tsv_annotation + '"') else ""} \
      ~{if (use_threshold_filters) then "--use-threshold-filters" else ""} \
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
      ~{if defined(de_novo_max_parent_ad_two) then ("--de-novo-max-parent-ad2 " +  '"' + de_novo_max_parent_ad_two + '"') else ""} \
      ~{if (enable_off_target_filter) then "--enable-off-target-filter" else ""} \
      ~{if (utr_is_off_target) then "--utr-is-off-target" else ""} \
      ~{if (intronic_splice_is_off_target) then "--intronic-splice-is-off-target" else ""} \
      ~{if (no_escape_ann_field) then "--no-escape-ann-field" else ""} \
      ~{if (show_all) then "--show-all" else ""} \
      ~{if (no_three_prime_shifting) then "--no-3-prime-shifting" else ""} \
      ~{if (three_letter_amino_acids) then "--3-letter-amino-acids" else ""} \
      ~{if (report_no_progress) then "--report-no-progress" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (very_verbose) then "--very-verbose" else ""} \
      ~{if defined(http_proxy) then ("--http-proxy " +  '"' + http_proxy + '"') else ""} \
      ~{if defined(https_proxy) then ("--https-proxy " +  '"' + https_proxy + '"') else ""} \
      ~{if defined(ftp_proxy) then ("--ftp-proxy " +  '"' + ftp_proxy + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/jannovar-cli:0.35--0"
  }
  parameter_meta {
    d: "[--interval INTERVAL]"
    input_vcf: "Path to input VCF file"
    output_vcf: "Path to output VCF file"
    database: "Path to database .ser file"
    interval: "Interval with regions to annotate (optional)"
    pedigree_file: "Pedigree file  to  use  for  Mendelian inheritance\\nannotation"
    ref_fast_a: "Path  to   FAI-indexed   reference   FASTA   file,\\nrequired for dbSNP/ExAC/UK10K-based annotation"
    dbsnp_vcf: "Path to dbSNP VCF file, activates dbSNP annotation"
    dbsnp_prefix: "Prefix for dbSNP annotations"
    ex_ac_vcf: "Path to ExAC VCF file, activates ExAC annotation"
    ex_ac_prefix: "Prefix for ExAC annotations"
    g_nomad_exo_mes_vcf: "Path to gnomAD exomes  VCF  file, activates gnomAD\\nexomes annotation"
    g_nomad_exo_mes_prefix: "Prefix for ExgnomAD exomes AC annotations"
    g_nomad_genomes_vcf: "Path to gnomAD genomes  VCF file, activates gnomAD\\ngenomes annotation"
    g_nomad_genomes_prefix: "Prefix for ExgnomAD genomes AC annotations"
    uk_one_zero_k_vcf: "Path to UK10K VCF file, activates UK10K annotation"
    uk_one_zero_k_prefix: "Prefix for UK10K annotations"
    gone_k_vcf: "Path  to  thousand  genomes  VCF  file,  activates\\nthousand genomes annotation"
    gone_k_prefix: "Prefix for thousand genomes annotations"
    clin_var_vcf: "Path to ClinVar file, activates ClinVar annotation"
    clin_var_prefix: "Prefix for ClinVar annotations"
    cosmic_vcf: "Path to COSMIC file, activates COSMIC annotation"
    cosmic_prefix: "Prefix for COSMIC annotations"
    inheritance_an_no_use_filters: "Use filters in inheritance mode annotation"
    d_bnsf_p_tsv: "Patht to dbNSFP TSV file"
    d_bnsf_p_col_contig: "Column index of contig in dbNSFP"
    d_bnsf_p_col_position: "Column index of position in dbNSFP"
    d_bnsf_p_prefix: "Prefix for dbNSFP annotations"
    d_bnsf_p_columns: "Columns from dbDSFP file to use for annotation"
    bed_annotation: "Add BED file  to  use  for  annotating.  The value\\nmust  be  of   the   format  \\\"pathToBed:infoField:\\ndescription[:colNo]\\\"."
    vcf_annotation: "Add VCF file  to  use  for  annotating.  The value\\nmust be of the format \\\"pathToVfFile:prefix:field1,\\nfield2,field3\\\"."
    tsv_annotation: "Add TSV file  to  use  for  annotating.  The value\\nmust   be    of    the    format   \\\"pathToTsvFile:\\noneBasedOffset:colContig:colStart:colEnd:colRef\\n(or=0):colAlt(or=0):isRefAnnotated(R=yes,A=no):\\ncolValue:fieldType:fieldName:fieldDescription:\\naccumulationStrategy\\\"."
    use_threshold_filters: "Use threshold-based filters"
    gt_thresh_filt_min_cov_het: "Minimal coverage for het. call"
    gt_thresh_filt_min_cov_hom_alt: "Minimal coverage for hom. alt calls"
    gt_thresh_filt_max_cov: "Maximal coverage for a sample"
    gt_thresh_filt_min_gq: "Minimal genotype call quality"
    gt_thresh_filt_min_aaf_het: "Minimal het. call alternate allele fraction"
    gt_thresh_filt_max_aaf_het: "Maximal het. call alternate allele fraction"
    gt_thresh_filt_min_aaf_hom_alt: "Minimal hom. alt call alternate allele fraction"
    gt_thresh_filt_max_aaf_hom_ref: "Maximal hom. ref call alternate allele fraction"
    var_thresh_max_allele_freq_ad: "Maximal allele  fraction  for  autosomal  dominant\\ninheritance mode"
    var_thresh_max_allele_freq_ar: "Maximal allele  fraction  for  autosomal recessive\\ninheritance mode"
    var_thresh_max_hom_alt_ex_ac: "Maximal count in homozygous  state  in ExAC before\\nignoring"
    var_thresh_max_hom_alt_gone_k: "Maximal count in homozygous  state  in ExAC before\\nignoring"
    de_novo_max_parent_ad_two: "Maximal support of  alternative  allele  in parent\\nfor de novo variants."
    enable_off_target_filter: "Enable filter for  on/off-target  based  on effect\\nimpact"
    utr_is_off_target: "Make UTR count as off-target  (default is to count\\nUTR as on-target)"
    intronic_splice_is_off_target: "Make intronic (non-consensus  site)  splice region\\ncount as off-target (default  is  to  count as on-\\ntarget)"
    no_escape_ann_field: "Disable escaping of INFO/ANN field in VCF output"
    show_all: "Show all effects"
    no_three_prime_shifting: "Disable shifting towards 3' of transcript"
    three_letter_amino_acids: "Enable usage of 3 letter amino acid codes"
    report_no_progress: "Disable progress report, more quiet mode"
    verbose: "Enable verbose mode"
    very_verbose: "Enable very verbose mode"
    http_proxy: "Set HTTP proxy to use, if any"
    https_proxy: "Set HTTPS proxy to use, if any"
    ftp_proxy: "Set FTP proxy to use, if any"
    annotate: "VCF  file  with   single  individual  as"
    singleton: "pedigree  (singleton   assumed   to  be"
    one_parents_genotype: "one  parent's  genotype   is  affected,  apply"
    use: "advanced   pedigree-based   filters   (mainly"
  }
  output {
    File out_stdout = stdout()
    File out_output_vcf = "${in_output_vcf}"
  }
}