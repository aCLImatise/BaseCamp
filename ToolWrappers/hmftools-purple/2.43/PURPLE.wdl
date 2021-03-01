version 1.0

task PURPLE {
  input {
    String? circo_s
    File? cobalt
    String? db_user
    String? hotspots
    Float? max_purity
    String? min_diploid_tumor_ratio_count
    String? min_diploid_tumor_ratio_count_centromere
    Float? min_norm_factor
    Float? min_purity
    Boolean? no_charts
    String? norm_factor_increment
    File? output_dir
    Int? ploidy_penalty_factor
    String? ploidy_penalty_min
    Int? ploidy_penalty_sub_min_additional
    String? ploidy_penalty_sub_one_major_allele_multiplier
    String? purity_increment
    File? ref_genome
    String? name_of_the
    String? somatic_min_purity_spread
    String? somatic_penalty_weight
    String? structural_vcf
    String? sv_recovery_vcf
    Int? number_of
    String? tumor
    Boolean? tumor_only
    Boolean? version
    String purity_ploidy_estimate_application
    String tdot
    String dbpass_arg_database
    String password_dot
    String po
    String drivercatalog_persist_data
    String gcprofile_arg_path
    String profile_dot
    String maxnormfactor_arg_maximum
    String increments
    String directory
    String applied
    String normal
    String modelling
    String multiplier
    String increment
    String sample_this
    String should
    String cobalt_dot
    Int five_zero_dot
    String within
    Float zero_dot_one_five
    String variants
    String somatic
    Int one_dot
    String highly_diploid
    String default
    String displaying
  }
  command <<<
    PURPLE \
      ~{purity_ploidy_estimate_application} \
      ~{tdot} \
      ~{dbpass_arg_database} \
      ~{password_dot} \
      ~{po} \
      ~{drivercatalog_persist_data} \
      ~{gcprofile_arg_path} \
      ~{profile_dot} \
      ~{maxnormfactor_arg_maximum} \
      ~{increments} \
      ~{directory} \
      ~{applied} \
      ~{normal} \
      ~{modelling} \
      ~{multiplier} \
      ~{increment} \
      ~{sample_this} \
      ~{should} \
      ~{cobalt_dot} \
      ~{five_zero_dot} \
      ~{within} \
      ~{zero_dot_one_five} \
      ~{variants} \
      ~{somatic} \
      ~{one_dot} \
      ~{highly_diploid} \
      ~{default} \
      ~{displaying} \
      ~{if defined(circo_s) then ("-circos " +  '"' + circo_s + '"') else ""} \
      ~{if defined(cobalt) then ("-cobalt " +  '"' + cobalt + '"') else ""} \
      ~{if defined(db_user) then ("-db_user " +  '"' + db_user + '"') else ""} \
      ~{if defined(hotspots) then ("-hotspots " +  '"' + hotspots + '"') else ""} \
      ~{if defined(max_purity) then ("-max_purity " +  '"' + max_purity + '"') else ""} \
      ~{if defined(min_diploid_tumor_ratio_count) then ("-min_diploid_tumor_ratio_count " +  '"' + min_diploid_tumor_ratio_count + '"') else ""} \
      ~{if defined(min_diploid_tumor_ratio_count_centromere) then ("-min_diploid_tumor_ratio_count_centromere " +  '"' + min_diploid_tumor_ratio_count_centromere + '"') else ""} \
      ~{if defined(min_norm_factor) then ("-min_norm_factor " +  '"' + min_norm_factor + '"') else ""} \
      ~{if defined(min_purity) then ("-min_purity " +  '"' + min_purity + '"') else ""} \
      ~{if (no_charts) then "-no_charts" else ""} \
      ~{if defined(norm_factor_increment) then ("-norm_factor_increment " +  '"' + norm_factor_increment + '"') else ""} \
      ~{if defined(output_dir) then ("-output_dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(ploidy_penalty_factor) then ("-ploidy_penalty_factor " +  '"' + ploidy_penalty_factor + '"') else ""} \
      ~{if defined(ploidy_penalty_min) then ("-ploidy_penalty_min " +  '"' + ploidy_penalty_min + '"') else ""} \
      ~{if defined(ploidy_penalty_sub_min_additional) then ("-ploidy_penalty_sub_min_additional " +  '"' + ploidy_penalty_sub_min_additional + '"') else ""} \
      ~{if defined(ploidy_penalty_sub_one_major_allele_multiplier) then ("-ploidy_penalty_sub_one_major_allele_multiplier " +  '"' + ploidy_penalty_sub_one_major_allele_multiplier + '"') else ""} \
      ~{if defined(purity_increment) then ("-purity_increment " +  '"' + purity_increment + '"') else ""} \
      ~{if defined(ref_genome) then ("-ref_genome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(name_of_the) then ("-reference " +  '"' + name_of_the + '"') else ""} \
      ~{if defined(somatic_min_purity_spread) then ("-somatic_min_purity_spread " +  '"' + somatic_min_purity_spread + '"') else ""} \
      ~{if defined(somatic_penalty_weight) then ("-somatic_penalty_weight " +  '"' + somatic_penalty_weight + '"') else ""} \
      ~{if defined(structural_vcf) then ("-structural_vcf " +  '"' + structural_vcf + '"') else ""} \
      ~{if defined(sv_recovery_vcf) then ("-sv_recovery_vcf " +  '"' + sv_recovery_vcf + '"') else ""} \
      ~{if defined(number_of) then ("-threads " +  '"' + number_of + '"') else ""} \
      ~{if defined(tumor) then ("-tumor " +  '"' + tumor + '"') else ""} \
      ~{if (tumor_only) then "-tumor_only" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    circo_s: "Location of\\ncircos binary"
    cobalt: "Path to COBALT"
    db_user: "Database user"
    hotspots: "Database user"
    max_purity: "Maximum purity\\n(default 1.0)"
    min_diploid_tumor_ratio_count: "Minimum ratio\\ncount while\\nsmoothing\\nbefore diploid\\nregions become\\nsuspect."
    min_diploid_tumor_ratio_count_centromere: "Minimum ratio\\ncount while\\nsmoothing\\nbefore diploid\\nregions become\\nsuspect while\\napproaching\\ncentromere."
    min_norm_factor: "Minimum norm\\nfactor (default\\n0.33)"
    min_purity: "Minimum purity\\n(default 0.08)"
    no_charts: "Disable charts"
    norm_factor_increment: "Norm factor"
    output_dir: "Path to the"
    ploidy_penalty_factor: "Penalty factor\\nto apply to the\\nnumber of copy\\nnumber events"
    ploidy_penalty_min: "Minimum ploidy"
    ploidy_penalty_sub_min_additional: "Additional\\npenalty to\\napply to major\\nallele < 1 or\\nminor allele <\\n0"
    ploidy_penalty_sub_one_major_allele_multiplier: "Penalty"
    purity_increment: "Purity"
    ref_genome: "Path to the ref\\ngenome fasta\\nfile."
    name_of_the: "Name of the"
    somatic_min_purity_spread: "Minimum spread"
    somatic_penalty_weight: "Proportion of"
    structural_vcf: "Optional\\nlocation of\\nstructural\\nvariant vcf for\\nmore accurate\\nsegmentation."
    sv_recovery_vcf: "Optional\\nlocation of\\nfailing\\nstructural\\nvariants that\\nmay be\\nrecovered."
    number_of: "Number of"
    tumor: "Name of the\\ntumor sample.\\nThis should\\ncorrespond to\\nthe value used\\nin AMBER and\\nCOBALT."
    tumor_only: "Tumor only\\nmode. Disables\\nsomatic\\nfitting."
    version: "Exit after"
    purity_ploidy_estimate_application: "-amber <arg>                                              Path to AMBER"
    tdot: "-db_enabled                                               Persist data to"
    dbpass_arg_database: "-db_pass <arg>                                            Database"
    password_dot: "-db_url <arg>                                             Database url in"
    po: "rt/database"
    drivercatalog_persist_data: "-driver_catalog                                           Persist data to"
    gcprofile_arg_path: "-gc_profile <arg>                                         Path to GC"
    profile_dot: "-highly_diploid_percentage <arg>                          Proportion of"
    maxnormfactor_arg_maximum: "-max_norm_factor <arg>                                    Maximum norm"
    increments: "(default  0.01)"
    directory: "directory."
    applied: "-ploidy_penalty_standard_deviation <arg>                  Standard"
    normal: "distribution"
    modelling: "ploidy"
    multiplier: "applied to"
    increment: "(default 0.01)"
    sample_this: "sample. This"
    should: "correspond to"
    cobalt_dot: "-somatic_min_peak <arg>                                   Minimum number"
    five_zero_dot: "-somatic_min_purity <arg>                                 Somatic fit"
    within: "candidate"
    zero_dot_one_five: "-somatic_min_total <arg>                                  Minimum number"
    variants: "required to"
    somatic: "deviation to"
    one_dot: "-somatic_vcf <arg>                                        Optional"
    highly_diploid: "samples."
    default: "(default 2)"
    displaying: "version info."
  }
  output {
    File out_stdout = stdout()
  }
}