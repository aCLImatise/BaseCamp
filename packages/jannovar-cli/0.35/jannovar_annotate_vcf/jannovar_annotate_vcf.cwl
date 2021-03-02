class: CommandLineTool
id: jannovar_annotate_vcf.cwl
inputs:
- id: in_d
  doc: '[--interval INTERVAL]'
  type: string?
  inputBinding:
    prefix: -d
- id: in_input_vcf
  doc: Path to input VCF file
  type: File?
  inputBinding:
    prefix: --input-vcf
- id: in_output_vcf
  doc: Path to output VCF file
  type: File?
  inputBinding:
    prefix: --output-vcf
- id: in_database
  doc: Path to database .ser file
  type: File?
  inputBinding:
    prefix: --database
- id: in_interval
  doc: Interval with regions to annotate (optional)
  type: string?
  inputBinding:
    prefix: --interval
- id: in_pedigree_file
  doc: "Pedigree file  to  use  for  Mendelian inheritance\nannotation"
  type: File?
  inputBinding:
    prefix: --pedigree-file
- id: in_ref_fast_a
  doc: "Path  to   FAI-indexed   reference   FASTA   file,\nrequired for dbSNP/ExAC/UK10K-based\
    \ annotation"
  type: File?
  inputBinding:
    prefix: --ref-fasta
- id: in_dbsnp_vcf
  doc: Path to dbSNP VCF file, activates dbSNP annotation
  type: File?
  inputBinding:
    prefix: --dbsnp-vcf
- id: in_dbsnp_prefix
  doc: Prefix for dbSNP annotations
  type: string?
  inputBinding:
    prefix: --dbsnp-prefix
- id: in_ex_ac_vcf
  doc: Path to ExAC VCF file, activates ExAC annotation
  type: File?
  inputBinding:
    prefix: --exac-vcf
- id: in_ex_ac_prefix
  doc: Prefix for ExAC annotations
  type: string?
  inputBinding:
    prefix: --exac-prefix
- id: in_g_nomad_exo_mes_vcf
  doc: "Path to gnomAD exomes  VCF  file, activates gnomAD\nexomes annotation"
  type: File?
  inputBinding:
    prefix: --gnomad-exomes-vcf
- id: in_g_nomad_exo_mes_prefix
  doc: Prefix for ExgnomAD exomes AC annotations
  type: string?
  inputBinding:
    prefix: --gnomad-exomes-prefix
- id: in_g_nomad_genomes_vcf
  doc: "Path to gnomAD genomes  VCF file, activates gnomAD\ngenomes annotation"
  type: File?
  inputBinding:
    prefix: --gnomad-genomes-vcf
- id: in_g_nomad_genomes_prefix
  doc: Prefix for ExgnomAD genomes AC annotations
  type: string?
  inputBinding:
    prefix: --gnomad-genomes-prefix
- id: in_uk_one_zero_k_vcf
  doc: Path to UK10K VCF file, activates UK10K annotation
  type: long?
  inputBinding:
    prefix: --uk10k-vcf
- id: in_uk_one_zero_k_prefix
  doc: Prefix for UK10K annotations
  type: long?
  inputBinding:
    prefix: --uk10k-prefix
- id: in_gone_k_vcf
  doc: "Path  to  thousand  genomes  VCF  file,  activates\nthousand genomes annotation"
  type: long?
  inputBinding:
    prefix: --g1k-vcf
- id: in_gone_k_prefix
  doc: Prefix for thousand genomes annotations
  type: long?
  inputBinding:
    prefix: --g1k-prefix
- id: in_clin_var_vcf
  doc: Path to ClinVar file, activates ClinVar annotation
  type: File?
  inputBinding:
    prefix: --clinvar-vcf
- id: in_clin_var_prefix
  doc: Prefix for ClinVar annotations
  type: string?
  inputBinding:
    prefix: --clinvar-prefix
- id: in_cosmic_vcf
  doc: Path to COSMIC file, activates COSMIC annotation
  type: File?
  inputBinding:
    prefix: --cosmic-vcf
- id: in_cosmic_prefix
  doc: Prefix for COSMIC annotations
  type: string?
  inputBinding:
    prefix: --cosmic-prefix
- id: in_inheritance_an_no_use_filters
  doc: Use filters in inheritance mode annotation
  type: boolean?
  inputBinding:
    prefix: --inheritance-anno-use-filters
- id: in_d_bnsf_p_tsv
  doc: Patht to dbNSFP TSV file
  type: File?
  inputBinding:
    prefix: --dbnsfp-tsv
- id: in_d_bnsf_p_col_contig
  doc: Column index of contig in dbNSFP
  type: string?
  inputBinding:
    prefix: --dbnsfp-col-contig
- id: in_d_bnsf_p_col_position
  doc: Column index of position in dbNSFP
  type: string?
  inputBinding:
    prefix: --dbnsfp-col-position
- id: in_d_bnsf_p_prefix
  doc: Prefix for dbNSFP annotations
  type: string?
  inputBinding:
    prefix: --dbnsfp-prefix
- id: in_d_bnsf_p_columns
  doc: Columns from dbDSFP file to use for annotation
  type: File?
  inputBinding:
    prefix: --dbnsfp-columns
- id: in_bed_annotation
  doc: "Add BED file  to  use  for  annotating.  The value\nmust  be  of   the   format\
    \  \"pathToBed:infoField:\ndescription[:colNo]\"."
  type: File?
  inputBinding:
    prefix: --bed-annotation
- id: in_vcf_annotation
  doc: "Add VCF file  to  use  for  annotating.  The value\nmust be of the format\
    \ \"pathToVfFile:prefix:field1,\nfield2,field3\"."
  type: File?
  inputBinding:
    prefix: --vcf-annotation
- id: in_tsv_annotation
  doc: "Add TSV file  to  use  for  annotating.  The value\nmust   be    of    the\
    \    format   \"pathToTsvFile:\noneBasedOffset:colContig:colStart:colEnd:colRef\n\
    (or=0):colAlt(or=0):isRefAnnotated(R=yes,A=no):\ncolValue:fieldType:fieldName:fieldDescription:\n\
    accumulationStrategy\"."
  type: File?
  inputBinding:
    prefix: --tsv-annotation
- id: in_use_threshold_filters
  doc: Use threshold-based filters
  type: boolean?
  inputBinding:
    prefix: --use-threshold-filters
- id: in_gt_thresh_filt_min_cov_het
  doc: Minimal coverage for het. call
  type: long?
  inputBinding:
    prefix: --gt-thresh-filt-min-cov-het
- id: in_gt_thresh_filt_min_cov_hom_alt
  doc: Minimal coverage for hom. alt calls
  type: long?
  inputBinding:
    prefix: --gt-thresh-filt-min-cov-hom-alt
- id: in_gt_thresh_filt_max_cov
  doc: Maximal coverage for a sample
  type: long?
  inputBinding:
    prefix: --gt-thresh-filt-max-cov
- id: in_gt_thresh_filt_min_gq
  doc: Minimal genotype call quality
  type: long?
  inputBinding:
    prefix: --gt-thresh-filt-min-gq
- id: in_gt_thresh_filt_min_aaf_het
  doc: Minimal het. call alternate allele fraction
  type: long?
  inputBinding:
    prefix: --gt-thresh-filt-min-aaf-het
- id: in_gt_thresh_filt_max_aaf_het
  doc: Maximal het. call alternate allele fraction
  type: long?
  inputBinding:
    prefix: --gt-thresh-filt-max-aaf-het
- id: in_gt_thresh_filt_min_aaf_hom_alt
  doc: Minimal hom. alt call alternate allele fraction
  type: long?
  inputBinding:
    prefix: --gt-thresh-filt-min-aaf-hom-alt
- id: in_gt_thresh_filt_max_aaf_hom_ref
  doc: Maximal hom. ref call alternate allele fraction
  type: long?
  inputBinding:
    prefix: --gt-thresh-filt-max-aaf-hom-ref
- id: in_var_thresh_max_allele_freq_ad
  doc: "Maximal allele  fraction  for  autosomal  dominant\ninheritance mode"
  type: long?
  inputBinding:
    prefix: --var-thresh-max-allele-freq-ad
- id: in_var_thresh_max_allele_freq_ar
  doc: "Maximal allele  fraction  for  autosomal recessive\ninheritance mode"
  type: long?
  inputBinding:
    prefix: --var-thresh-max-allele-freq-ar
- id: in_var_thresh_max_hom_alt_ex_ac
  doc: "Maximal count in homozygous  state  in ExAC before\nignoring"
  type: long?
  inputBinding:
    prefix: --var-thresh-max-hom-alt-exac
- id: in_var_thresh_max_hom_alt_gone_k
  doc: "Maximal count in homozygous  state  in ExAC before\nignoring"
  type: long?
  inputBinding:
    prefix: --var-thresh-max-hom-alt-g1k
- id: in_de_novo_max_parent_ad_two
  doc: "Maximal support of  alternative  allele  in parent\nfor de novo variants."
  type: long?
  inputBinding:
    prefix: --de-novo-max-parent-ad2
- id: in_enable_off_target_filter
  doc: "Enable filter for  on/off-target  based  on effect\nimpact"
  type: boolean?
  inputBinding:
    prefix: --enable-off-target-filter
- id: in_utr_is_off_target
  doc: "Make UTR count as off-target  (default is to count\nUTR as on-target)"
  type: boolean?
  inputBinding:
    prefix: --utr-is-off-target
- id: in_intronic_splice_is_off_target
  doc: "Make intronic (non-consensus  site)  splice region\ncount as off-target (default\
    \  is  to  count as on-\ntarget)"
  type: boolean?
  inputBinding:
    prefix: --intronic-splice-is-off-target
- id: in_no_escape_ann_field
  doc: Disable escaping of INFO/ANN field in VCF output
  type: boolean?
  inputBinding:
    prefix: --no-escape-ann-field
- id: in_show_all
  doc: Show all effects
  type: boolean?
  inputBinding:
    prefix: --show-all
- id: in_no_three_prime_shifting
  doc: Disable shifting towards 3' of transcript
  type: boolean?
  inputBinding:
    prefix: --no-3-prime-shifting
- id: in_three_letter_amino_acids
  doc: Enable usage of 3 letter amino acid codes
  type: boolean?
  inputBinding:
    prefix: --3-letter-amino-acids
- id: in_report_no_progress
  doc: Disable progress report, more quiet mode
  type: boolean?
  inputBinding:
    prefix: --report-no-progress
- id: in_verbose
  doc: Enable verbose mode
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_very_verbose
  doc: Enable very verbose mode
  type: boolean?
  inputBinding:
    prefix: --very-verbose
- id: in_http_proxy
  doc: Set HTTP proxy to use, if any
  type: string?
  inputBinding:
    prefix: --http-proxy
- id: in_https_proxy
  doc: Set HTTPS proxy to use, if any
  type: string?
  inputBinding:
    prefix: --https-proxy
- id: in_ftp_proxy
  doc: Set FTP proxy to use, if any
  type: string?
  inputBinding:
    prefix: --ftp-proxy
- id: in_annotate
  doc: VCF  file  with   single  individual  as
  type: string
  inputBinding:
    position: 0
- id: in_singleton
  doc: pedigree  (singleton   assumed   to  be
  type: string
  inputBinding:
    position: 1
- id: in_if
  doc: one  parent's  genotype   is  affected,  apply
  type: string
  inputBinding:
    position: 0
- id: in_use
  doc: advanced   pedigree-based   filters   (mainly
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_vcf
  doc: Path to output VCF file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_vcf)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/jannovar-cli:0.35--0
cwlVersion: v1.1
baseCommand:
- jannovar
- annotate-vcf
