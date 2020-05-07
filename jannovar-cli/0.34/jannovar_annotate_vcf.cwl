class: CommandLineTool
id: jannovar_annotate_vcf.cwl
inputs:
- id: input_vcf
  doc: Path to input VCF file
  type: string
  inputBinding:
    prefix: --input-vcf
- id: output_vcf
  doc: Path to output VCF file
  type: string
  inputBinding:
    prefix: --output-vcf
- id: database
  doc: Path to database .ser file
  type: string
  inputBinding:
    prefix: --database
- id: interval
  doc: Interval with regions to annotate (optional)
  type: long
  inputBinding:
    prefix: --interval
- id: pedigree_file
  doc: Pedigree file to use for Mendelian inheritance annotation
  type: string
  inputBinding:
    prefix: --pedigree-file
- id: annotate_as_singleton_pedigree
  doc: Annotate VCF file with single individual as singleton pedigree (singleton assumed
    to be affected)
  type: boolean
  inputBinding:
    prefix: --annotate-as-singleton-pedigree
- id: ref_fast_a
  doc: Path to FAI-indexed reference FASTA file, required for dbSNP/ExAC/UK10K-based
    annotation
  type: string
  inputBinding:
    prefix: --ref-fasta
- id: dbsnp_vcf
  doc: Path to dbSNP VCF file, activates dbSNP annotation
  type: string
  inputBinding:
    prefix: --dbsnp-vcf
- id: dbsnp_prefix
  doc: Prefix for dbSNP annotations
  type: string
  inputBinding:
    prefix: --dbsnp-prefix
- id: ex_ac_vcf
  doc: Path to ExAC VCF file, activates ExAC annotation
  type: string
  inputBinding:
    prefix: --exac-vcf
- id: ex_ac_prefix
  doc: Prefix for ExAC annotations
  type: string
  inputBinding:
    prefix: --exac-prefix
- id: g_nomad_exo_mes_vcf
  doc: Path to gnomAD exomes VCF file, activates gnomAD exomes annotation
  type: string
  inputBinding:
    prefix: --gnomad-exomes-vcf
- id: g_nomad_exo_mes_prefix
  doc: Prefix for ExgnomAD exomes AC annotations
  type: string
  inputBinding:
    prefix: --gnomad-exomes-prefix
- id: g_nomad_genomes_vcf
  doc: Path to gnomAD genomes VCF file, activates gnomAD genomes annotation
  type: string
  inputBinding:
    prefix: --gnomad-genomes-vcf
- id: g_nomad_genomes_prefix
  doc: Prefix for ExgnomAD genomes AC annotations
  type: string
  inputBinding:
    prefix: --gnomad-genomes-prefix
- id: uk10k_vcf
  doc: Path to UK10K VCF file, activates UK10K annotation
  type: string
  inputBinding:
    prefix: --uk10k-vcf
- id: uk10k_prefix
  doc: Prefix for UK10K annotations
  type: string
  inputBinding:
    prefix: --uk10k-prefix
- id: g1k_vcf
  doc: Path to thousand genomes VCF file, activates thousand genomes annotation
  type: string
  inputBinding:
    prefix: --g1k-vcf
- id: g1k_prefix
  doc: Prefix for thousand genomes annotations
  type: string
  inputBinding:
    prefix: --g1k-prefix
- id: clin_var_vcf
  doc: Path to ClinVar file, activates ClinVar annotation
  type: string
  inputBinding:
    prefix: --clinvar-vcf
- id: clin_var_prefix
  doc: Prefix for ClinVar annotations
  type: string
  inputBinding:
    prefix: --clinvar-prefix
- id: cosmic_vcf
  doc: Path to COSMIC file, activates COSMIC annotation
  type: string
  inputBinding:
    prefix: --cosmic-vcf
- id: cosmic_prefix
  doc: Prefix for COSMIC annotations
  type: string
  inputBinding:
    prefix: --cosmic-prefix
- id: one_parent_gt_filtered_filters_affected
  doc: If one parent's genotype is affected, apply OneParentGtFiltered filter to child
  type: boolean
  inputBinding:
    prefix: --one-parent-gt-filtered-filters-affected
- id: inheritance_an_no_use_filters
  doc: Use filters in inheritance mode annotation
  type: boolean
  inputBinding:
    prefix: --inheritance-anno-use-filters
- id: d_bnsf_p_tsv
  doc: Patht to dbNSFP TSV file
  type: string
  inputBinding:
    prefix: --dbnsfp-tsv
- id: d_bnsf_p_col_contig
  doc: Column index of contig in dbNSFP
  type: string
  inputBinding:
    prefix: --dbnsfp-col-contig
- id: d_bnsf_p_col_position
  doc: Column index of position in dbNSFP
  type: string
  inputBinding:
    prefix: --dbnsfp-col-position
- id: d_bnsf_p_prefix
  doc: Prefix for dbNSFP annotations
  type: string
  inputBinding:
    prefix: --dbnsfp-prefix
- id: d_bnsf_p_columns
  doc: Columns from dbDSFP file to use for annotation
  type: string
  inputBinding:
    prefix: --dbnsfp-columns
- id: bed_annotation
  doc: Add BED file to use for annotating. The value must be of the format "pathToBed:infoField:description[:colNo]".
  type: string
  inputBinding:
    prefix: --bed-annotation
- id: vcf_annotation
  doc: Add VCF file to use for annotating. The value must be of the format "pathToVfFile:prefix:field1,field2,field3".
  type: string
  inputBinding:
    prefix: --vcf-annotation
- id: tsv_annotation
  doc: 'Add TSV file to use for  annotating.  The  value  must be of the format "pathToTsvFile:oneBasedOffset:colContig:colStart:colEnd:colRef(or=0):colAlt(or=0):isRefAnnotated(R=yes,A=no):
    colValue:fieldType:fieldName:fieldDescription:accumulationStrategy".'
  type: string
  inputBinding:
    prefix: --tsv-annotation
- id: use_threshold_filters
  doc: Use threshold-based filters
  type: boolean
  inputBinding:
    prefix: --use-threshold-filters
- id: gt_thresh_filt_min_cov_het
  doc: Minimal coverage for het. call
  type: string
  inputBinding:
    prefix: --gt-thresh-filt-min-cov-het
- id: gt_thresh_filt_min_cov_hom_alt
  doc: Minimal coverage for hom. alt calls
  type: string
  inputBinding:
    prefix: --gt-thresh-filt-min-cov-hom-alt
- id: gt_thresh_filt_max_cov
  doc: Maximal coverage for a sample
  type: string
  inputBinding:
    prefix: --gt-thresh-filt-max-cov
- id: gt_thresh_filt_min_gq
  doc: Minimal genotype call quality
  type: string
  inputBinding:
    prefix: --gt-thresh-filt-min-gq
- id: gt_thresh_filt_min_aaf_het
  doc: Minimal het. call alternate allele fraction
  type: string
  inputBinding:
    prefix: --gt-thresh-filt-min-aaf-het
- id: gt_thresh_filt_max_aaf_het
  doc: Maximal het. call alternate allele fraction
  type: string
  inputBinding:
    prefix: --gt-thresh-filt-max-aaf-het
- id: gt_thresh_filt_min_aaf_hom_alt
  doc: Minimal hom. alt call alternate allele fraction
  type: string
  inputBinding:
    prefix: --gt-thresh-filt-min-aaf-hom-alt
- id: gt_thresh_filt_max_aaf_hom_ref
  doc: Maximal hom. ref call alternate allele fraction
  type: string
  inputBinding:
    prefix: --gt-thresh-filt-max-aaf-hom-ref
- id: var_thresh_max_allele_freq_ad
  doc: Maximal allele fraction for autosomal dominant inheritance mode
  type: string
  inputBinding:
    prefix: --var-thresh-max-allele-freq-ad
- id: var_thresh_max_allele_freq_ar
  doc: Maximal allele fraction for autosomal recessive inheritance mode
  type: string
  inputBinding:
    prefix: --var-thresh-max-allele-freq-ar
- id: var_thresh_max_hom_alt_ex_ac
  doc: Maximal count in homozygous state in ExAC before ignoring
  type: string
  inputBinding:
    prefix: --var-thresh-max-hom-alt-exac
- id: var_thresh_max_hom_alt_g1k
  doc: Maximal count in homozygous state in ExAC before ignoring
  type: string
  inputBinding:
    prefix: --var-thresh-max-hom-alt-g1k
- id: use_advanced_pedigree_filters
  doc: Use advanced pedigree-based filters (mainly useful for de novo variants)
  type: boolean
  inputBinding:
    prefix: --use-advanced-pedigree-filters
- id: de_novo_max_parent_ad2
  doc: Maximal support of alternative allele in parent for de novo variants.
  type: string
  inputBinding:
    prefix: --de-novo-max-parent-ad2
- id: enable_off_target_filter
  doc: Enable filter for on/off-target based on effect impact
  type: boolean
  inputBinding:
    prefix: --enable-off-target-filter
- id: utr_is_off_target
  doc: Make UTR count as off-target (default is to count UTR as on-target)
  type: boolean
  inputBinding:
    prefix: --utr-is-off-target
- id: intronic_splice_is_off_target
  doc: Make intronic (non-consensus site) splice region count as off-target (default
    is to count as on-target)
  type: boolean
  inputBinding:
    prefix: --intronic-splice-is-off-target
- id: report_no_progress
  doc: Disable progress report, more quiet mode
  type: boolean
  inputBinding:
    prefix: --report-no-progress
- id: verbose
  doc: Enable verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: very_verbose
  doc: Enable very verbose mode
  type: boolean
  inputBinding:
    prefix: --very-verbose
- id: http_proxy
  doc: Set HTTP proxy to use, if any
  type: string
  inputBinding:
    prefix: --http-proxy
- id: https_proxy
  doc: Set HTTPS proxy to use, if any
  type: string
  inputBinding:
    prefix: --https-proxy
- id: ftp_proxy
  doc: Set FTP proxy to use, if any
  type: string
  inputBinding:
    prefix: --ftp-proxy
outputs: []
cwlVersion: v1.1
baseCommand:
- jannovar
- annotate-vcf
