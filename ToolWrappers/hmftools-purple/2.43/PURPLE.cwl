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
- id: in_hotspots
  doc: Database user
  type: string?
  inputBinding:
    prefix: -hotspots
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
- id: in_min_norm_factor
  doc: "Minimum norm\nfactor (default\n0.33)"
  type: double?
  inputBinding:
    prefix: -min_norm_factor
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
- id: in_norm_factor_increment
  doc: Norm factor
  type: string?
  inputBinding:
    prefix: -norm_factor_increment
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
- id: in_drivercatalog_persist_data
  doc: -driver_catalog                                           Persist data to
  type: string
  inputBinding:
    position: 1
- id: in_gcprofile_arg_path
  doc: -gc_profile <arg>                                         Path to GC
  type: string
  inputBinding:
    position: 2
- id: in_profile_dot
  doc: -highly_diploid_percentage <arg>                          Proportion of
  type: string
  inputBinding:
    position: 3
- id: in_maxnormfactor_arg_maximum
  doc: -max_norm_factor <arg>                                    Maximum norm
  type: string
  inputBinding:
    position: 0
- id: in_increments
  doc: (default  0.01)
  type: string
  inputBinding:
    position: 0
- id: in_output
  doc: directory.
  type: string
  inputBinding:
    position: 1
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
  doc: -somatic_min_peak <arg>                                   Minimum number
  type: string
  inputBinding:
    position: 0
- id: in_five_zero_dot
  doc: -somatic_min_purity <arg>                                 Somatic fit
  type: long
  inputBinding:
    position: 0
- id: in_within
  doc: candidate
  type: string
  inputBinding:
    position: 0
- id: in_zero_dot_one_five
  doc: -somatic_min_total <arg>                                  Minimum number
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
- id: in_one_dot
  doc: -somatic_vcf <arg>                                        Optional
  type: long
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
hints: []
cwlVersion: v1.1
baseCommand:
- PURPLE
