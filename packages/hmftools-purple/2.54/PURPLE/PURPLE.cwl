class: CommandLineTool
id: PURPLE.cwl
inputs:
- id: in_circo_s
  doc: "Location of\ncircos binary"
  type: string?
  inputBinding:
    prefix: -circos
- id: in_cobalt
  doc: Path to COBALT
  type: File?
  inputBinding:
    prefix: -cobalt
- id: in_db_user
  doc: Database user
  type: string?
  inputBinding:
    prefix: -db_user
- id: in_gc_profile
  doc: Path to GC
  type: File?
  inputBinding:
    prefix: -gc_profile
- id: in_germline_vcf
  doc: "Optional\nlocation of\ngermline\nvariants to\nenrich and\nprocess in\ndriver\
    \ catalog."
  type: string?
  inputBinding:
    prefix: -germline_vcf
- id: in_highly_diploid_percentage
  doc: "Proportion of\ngenome that\nmust be diploid\nbefore using\nsomatic fit.\n\
    Default 0.97"
  type: double?
  inputBinding:
    prefix: -highly_diploid_percentage
- id: in_max_ploidy
  doc: "Maximum ploidy\n(default 8.0)"
  type: double?
  inputBinding:
    prefix: -max_ploidy
- id: in_max_purity
  doc: "Maximum purity\n(default 1.0)"
  type: double?
  inputBinding:
    prefix: -max_purity
- id: in_min_diploid_tumor_ratio_count
  doc: "Minimum ratio\ncount while\nsmoothing\nbefore diploid\nregions become\nsuspect."
  type: string?
  inputBinding:
    prefix: -min_diploid_tumor_ratio_count
- id: in_min_diploid_tumor_ratio_count_centromere
  doc: "Minimum ratio\ncount while\nsmoothing\nbefore diploid\nregions become\nsuspect\
    \ while\napproaching\ncentromere."
  type: string?
  inputBinding:
    prefix: -min_diploid_tumor_ratio_count_centromere
- id: in_min_ploidy
  doc: "Minimum ploidy\n(default 1.0)"
  type: double?
  inputBinding:
    prefix: -min_ploidy
- id: in_min_purity
  doc: "Minimum purity\n(default 0.08)"
  type: double?
  inputBinding:
    prefix: -min_purity
- id: in_no_charts
  doc: Disable charts
  type: boolean?
  inputBinding:
    prefix: -no_charts
- id: in_output_dir
  doc: Path to the
  type: File?
  inputBinding:
    prefix: -output_dir
- id: in_ploidy_penalty_factor
  doc: "Penalty factor\nto apply to the\nnumber of copy\nnumber events"
  type: long?
  inputBinding:
    prefix: -ploidy_penalty_factor
- id: in_ploidy_penalty_min
  doc: Minimum ploidy
  type: string?
  inputBinding:
    prefix: -ploidy_penalty_min
- id: in_ploidy_penalty_sub_min_additional
  doc: "Additional\npenalty to\napply to major\nallele < 1 or\nminor allele <\n0"
  type: long?
  inputBinding:
    prefix: -ploidy_penalty_sub_min_additional
- id: in_ploidy_penalty_sub_one_major_allele_multiplier
  doc: Penalty
  type: string?
  inputBinding:
    prefix: -ploidy_penalty_sub_one_major_allele_multiplier
- id: in_purity_increment
  doc: Purity
  type: string?
  inputBinding:
    prefix: -purity_increment
- id: in_ref_genome
  doc: "Path to the ref\ngenome fasta\nfile."
  type: File?
  inputBinding:
    prefix: -ref_genome
- id: in_name_of_the
  doc: Name of the
  type: string?
  inputBinding:
    prefix: -reference
- id: in_somatic_min_peak
  doc: "Minimum number\nof somatic\nvariants to\nconsider a\npeak. Default\n10"
  type: long?
  inputBinding:
    prefix: -somatic_min_peak
- id: in_somatic_min_purity
  doc: "Somatic fit\nwill not be\nused if both\nsomatic and\nfitted purities\nare\
    \ less than\nthis value.\nDefault 0.17"
  type: double?
  inputBinding:
    prefix: -somatic_min_purity
- id: in_somatic_min_purity_spread
  doc: Minimum spread
  type: string?
  inputBinding:
    prefix: -somatic_min_purity_spread
- id: in_somatic_penalty_weight
  doc: Proportion of
  type: string?
  inputBinding:
    prefix: -somatic_penalty_weight
- id: in_structural_vcf
  doc: "Optional\nlocation of\nstructural\nvariant vcf for\nmore accurate\nsegmentation."
  type: string?
  inputBinding:
    prefix: -structural_vcf
- id: in_sv_recovery_vcf
  doc: "Optional\nlocation of\nfailing\nstructural\nvariants that\nmay be\nrecovered."
  type: string?
  inputBinding:
    prefix: -sv_recovery_vcf
- id: in_number_of
  doc: Number of
  type: long?
  inputBinding:
    prefix: -threads
- id: in_tumor
  doc: "Name of the\ntumor sample.\nThis should\ncorrespond to\nthe value used\nin\
    \ AMBER and\nCOBALT."
  type: string?
  inputBinding:
    prefix: -tumor
- id: in_tumor_only
  doc: "Tumor only\nmode. Disables\nsomatic\nfitting."
  type: boolean?
  inputBinding:
    prefix: -tumor_only
- id: in_version
  doc: Exit after
  type: boolean?
  inputBinding:
    prefix: -version
- id: in_purity_ploidy_estimate_application
  doc: -amber <arg>                                              Path to AMBER
  type: string
  inputBinding:
    position: 0
- id: in_tdot
  doc: -db_enabled                                               Persist data to
  type: string
  inputBinding:
    position: 0
- id: in_dbpass_arg_database
  doc: -db_pass <arg>                                            Database
  type: string
  inputBinding:
    position: 1
- id: in_password_dot
  doc: -db_url <arg>                                             Database url in
  type: string
  inputBinding:
    position: 2
- id: in_po
  doc: rt/database
  type: string
  inputBinding:
    position: 0
- id: in_name_dot
  doc: -driver_catalog                                           Persist data to
  type: string
  inputBinding:
    position: 1
- id: in_drivergenepanel_arg_path
  doc: -driver_gene_panel <arg>                                  Path to driver
  type: string
  inputBinding:
    position: 2
- id: in_profile_dot
  doc: -germline_hotspots <arg>                                  Path to
  type: string
  inputBinding:
    position: 0
- id: in_germline
  doc: hotspot VCF
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: directory.
  type: string
  inputBinding:
    position: 2
- id: in_applied
  doc: -ploidy_penalty_standard_deviation <arg>                  Standard
  type: string
  inputBinding:
    position: 0
- id: in_normal
  doc: distribution
  type: string
  inputBinding:
    position: 0
- id: in_modelling
  doc: ploidy
  type: string
  inputBinding:
    position: 1
- id: in_multiplier
  doc: applied to
  type: string
  inputBinding:
    position: 0
- id: in_increment
  doc: (default 0.01)
  type: string
  inputBinding:
    position: 0
- id: in_sample_this
  doc: sample. This
  type: string
  inputBinding:
    position: 1
- id: in_should
  doc: correspond to
  type: string
  inputBinding:
    position: 2
- id: in_cobalt_dot
  doc: -somatic_hotspots <arg>                                   Path to somatic
  type: string
  inputBinding:
    position: 0
- id: in_within
  doc: candidate
  type: string
  inputBinding:
    position: 0
- id: in_zero_dot_one_five
  doc: -somatic_min_variants <arg>                               Minimum number
  type: double
  inputBinding:
    position: 0
- id: in_variants
  doc: required to
  type: string
  inputBinding:
    position: 0
- id: in_somatic
  doc: deviation to
  type: string
  inputBinding:
    position: 0
- id: in_one_dot_zero
  doc: -somatic_vcf <arg>                                        Optional
  type: double
  inputBinding:
    position: 0
- id: in_highly_diploid
  doc: samples.
  type: string
  inputBinding:
    position: 0
- id: in_default
  doc: (default 2)
  type: string
  inputBinding:
    position: 1
- id: in_displaying
  doc: version info.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hmftools-purple:2.54--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- PURPLE
