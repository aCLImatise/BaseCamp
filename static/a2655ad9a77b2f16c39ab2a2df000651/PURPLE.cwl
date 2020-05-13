class: CommandLineTool
id: PURPLE.cwl
inputs:
- id: amber
  doc: Path to AMBER output directory. Required if <run_dir> not set, otherwise defaults
    to <run_dir>/amber
  type: string
  inputBinding:
    prefix: -amber
- id: circo_s
  doc: Location of circos binary
  type: string
  inputBinding:
    prefix: -circos
- id: cobalt
  doc: Path to COBALT output directory. Required if <run_dir> not set, otherwise defaults
    to <run_dir>/cobal t.
  type: string
  inputBinding:
    prefix: -cobalt
- id: db_enabled
  doc: Persist data to DB.
  type: boolean
  inputBinding:
    prefix: -db_enabled
- id: db_pass
  doc: Database password.
  type: string
  inputBinding:
    prefix: -db_pass
- id: db_url
  doc: 'Database url in form: mysql://host:po rt/database'
  type: string
  inputBinding:
    prefix: -db_url
- id: db_user
  doc: Database user name.
  type: string
  inputBinding:
    prefix: -db_user
- id: driver_catalog
  doc: Persist data to DB.
  type: boolean
  inputBinding:
    prefix: -driver_catalog
- id: gc_profile
  doc: Path to GC profile.
  type: string
  inputBinding:
    prefix: -gc_profile
- id: highly_diploid_percentage
  doc: Proportion of genome that must be diploid before using somatic fit. Default
    0.97.
  type: string
  inputBinding:
    prefix: -highly_diploid_percentage
- id: hotspots
  doc: Database user name.
  type: string
  inputBinding:
    prefix: -hotspots
- id: max_norm_factor
  doc: Maximum norm factor (default 2.0)
  type: string
  inputBinding:
    prefix: -max_norm_factor
- id: max_purity
  doc: Maximum purity (default 1.0)
  type: string
  inputBinding:
    prefix: -max_purity
- id: min_diploid_tumor_ratio_count
  doc: Minimum ratio count while smoothing before diploid regions become suspect.
  type: string
  inputBinding:
    prefix: -min_diploid_tumor_ratio_count
- id: min_diploid_tumor_ratio_count_centromere
  doc: Minimum ratio count while smoothing before diploid regions become suspect while
    approaching centromere.
  type: string
  inputBinding:
    prefix: -min_diploid_tumor_ratio_count_centromere
- id: min_norm_factor
  doc: Minimum norm factor (default 0.33)
  type: string
  inputBinding:
    prefix: -min_norm_factor
- id: min_purity
  doc: Minimum purity (default 0.08)
  type: string
  inputBinding:
    prefix: -min_purity
- id: no_charts
  doc: Disable charts
  type: boolean
  inputBinding:
    prefix: -no_charts
- id: norm_factor_increment
  doc: Norm factor increments (default  0.01)
  type: string
  inputBinding:
    prefix: -norm_factor_increment
- id: output_dir
  doc: Path to the output directory. Required if <run_dir> not set, otherwise defaults
    to run_dir/purple/
  type: string
  inputBinding:
    prefix: -output_dir
- id: ploidy_penalty_factor
  doc: Penalty factor to apply to the number of copy number events
  type: string
  inputBinding:
    prefix: -ploidy_penalty_factor
- id: ploidy_penalty_min
  doc: Minimum ploidy penalty
  type: string
  inputBinding:
    prefix: -ploidy_penalty_min
- id: ploidy_penalty_min_standard_deviation_per_ploidy
  doc: Minimum ploidy penalty standard deviation to be applied
  type: string
  inputBinding:
    prefix: -ploidy_penalty_min_standard_deviation_per_ploidy
- id: ploidy_penalty_standard_deviation
  doc: Standard deviation of normal distribution modelling ploidy deviation from whole
    number
  type: string
  inputBinding:
    prefix: -ploidy_penalty_standard_deviation
- id: ploidy_penalty_sub_min_additional
  doc: Additional penalty to apply to major allele < 1 or minor allele < 0
  type: string
  inputBinding:
    prefix: -ploidy_penalty_sub_min_additional
- id: ploidy_penalty_sub_one_major_allele_multiplier
  doc: Penalty multiplier applied to major allele < 1
  type: string
  inputBinding:
    prefix: -ploidy_penalty_sub_one_major_allele_multiplier
- id: purity_increment
  doc: Purity increment (default 0.01)
  type: string
  inputBinding:
    prefix: -purity_increment
- id: ref_genome
  doc: Path to the ref genome fasta file.
  type: string
  inputBinding:
    prefix: -ref_genome
- id: reference
  doc: Name of the reference sample. This should correspond to the value used in AMBER
    and COBALT.
  type: string
  inputBinding:
    prefix: -reference
- id: somatic_min_peak
  doc: Minimum number of somatic variants to consider a peak. Default 50.
  type: string
  inputBinding:
    prefix: -somatic_min_peak
- id: somatic_min_purity
  doc: Somatic fit will not be used if both somatic and fitted purities are less than
    this value. Default 0.17
  type: string
  inputBinding:
    prefix: -somatic_min_purity
- id: somatic_min_purity_spread
  doc: Minimum spread within candidate purities before somatics can be used. Default
    0.15
  type: string
  inputBinding:
    prefix: -somatic_min_purity_spread
- id: somatic_min_total
  doc: Minimum number of somatic variants required to assist highly diploid fits.
    Default 300.
  type: string
  inputBinding:
    prefix: -somatic_min_total
- id: somatic_penalty_weight
  doc: Proportion of somatic deviation to include in fitted purity score. Default
    1.
  type: string
  inputBinding:
    prefix: -somatic_penalty_weight
- id: somatic_vcf
  doc: Optional location of somatic variant vcf to assist fitting in highly-diploid
    samples.
  type: string
  inputBinding:
    prefix: -somatic_vcf
- id: structural_vcf
  doc: Optional location of structural variant vcf for more accurate segmentation.
  type: string
  inputBinding:
    prefix: -structural_vcf
- id: sv_recovery_vcf
  doc: Optional location of failing structural variants that may be recovered.
  type: string
  inputBinding:
    prefix: -sv_recovery_vcf
- id: threads
  doc: Number of threads (default 2)
  type: string
  inputBinding:
    prefix: -threads
- id: tumor
  doc: Name of the tumor sample. This should correspond to the value used in AMBER
    and COBALT.
  type: string
  inputBinding:
    prefix: -tumor
- id: tumor_only
  doc: Tumor only mode. Disables somatic fitting.
  type: boolean
  inputBinding:
    prefix: -tumor_only
- id: version
  doc: Exit after displaying version info.
  type: boolean
  inputBinding:
    prefix: -version
outputs: []
cwlVersion: v1.1
baseCommand:
- PURPLE
