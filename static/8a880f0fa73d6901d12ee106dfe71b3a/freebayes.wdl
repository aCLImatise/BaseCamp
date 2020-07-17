version 1.0

task Freebayes {
  input {
    String? haplotype_length
    String? min_alternate_fraction
    File? samples
    File? populations
    File? cnv_map
    String? variant_input
    Boolean? only_use_input_alleles
    String? haplotype_basis_alleles
    Boolean? report_all_haplotype_alleles
    String? p_var
    Boolean? strict_vcf
    String? theta
    String? ploidy
    Boolean? pooled_discrete
    Boolean? pooled_continuous
    String? use_best_n_alleles
    String? max_complex_gap
    String? min_repeat_size
    String? min_repeat_entropy
    Boolean? no_partial_observations
    Boolean? throw_away_snp_obs
    Boolean? throw_away_indels_obs
    Boolean? throw_away_mnp_obs
    String? throw_away_complex_obs
    Boolean? dont_left_align_indels
    String? min_alternate_count
    String? min_alternate_q_sum
    String? min_alternate_total
    String? min_coverage
    String? limit_coverage
    String? skip_coverage
    Boolean? no_population_priors
    Boolean? h_we_priors_off
    Boolean? binomial_obs_priors_off
    Boolean? allele_balance_priors_off
    File? observation_bias
    String? base_quality_cap
    String? prob_contamination
    Boolean? legacy_gls
    File? contamination_estimates
    Boolean? debug
    Boolean? dd
    String calculations_dot
  }
  command <<<
    freebayes \
      ~{calculations_dot} \
      ~{if defined(haplotype_length) then ("--haplotype-length " +  '"' + haplotype_length + '"') else ""} \
      ~{if defined(min_alternate_fraction) then ("--min-alternate-fraction " +  '"' + min_alternate_fraction + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(populations) then ("--populations " +  '"' + populations + '"') else ""} \
      ~{if defined(cnv_map) then ("--cnv-map " +  '"' + cnv_map + '"') else ""} \
      ~{if defined(variant_input) then ("--variant-input " +  '"' + variant_input + '"') else ""} \
      ~{true="--only-use-input-alleles" false="" only_use_input_alleles} \
      ~{if defined(haplotype_basis_alleles) then ("--haplotype-basis-alleles " +  '"' + haplotype_basis_alleles + '"') else ""} \
      ~{true="--report-all-haplotype-alleles" false="" report_all_haplotype_alleles} \
      ~{if defined(p_var) then ("--pvar " +  '"' + p_var + '"') else ""} \
      ~{true="--strict-vcf" false="" strict_vcf} \
      ~{if defined(theta) then ("--theta " +  '"' + theta + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{true="--pooled-discrete" false="" pooled_discrete} \
      ~{true="--pooled-continuous" false="" pooled_continuous} \
      ~{if defined(use_best_n_alleles) then ("--use-best-n-alleles " +  '"' + use_best_n_alleles + '"') else ""} \
      ~{if defined(max_complex_gap) then ("--max-complex-gap " +  '"' + max_complex_gap + '"') else ""} \
      ~{if defined(min_repeat_size) then ("--min-repeat-size " +  '"' + min_repeat_size + '"') else ""} \
      ~{if defined(min_repeat_entropy) then ("--min-repeat-entropy " +  '"' + min_repeat_entropy + '"') else ""} \
      ~{true="--no-partial-observations" false="" no_partial_observations} \
      ~{true="--throw-away-snp-obs" false="" throw_away_snp_obs} \
      ~{true="--throw-away-indels-obs" false="" throw_away_indels_obs} \
      ~{true="--throw-away-mnp-obs" false="" throw_away_mnp_obs} \
      ~{if defined(throw_away_complex_obs) then ("--throw-away-complex-obs " +  '"' + throw_away_complex_obs + '"') else ""} \
      ~{true="--dont-left-align-indels" false="" dont_left_align_indels} \
      ~{if defined(min_alternate_count) then ("--min-alternate-count " +  '"' + min_alternate_count + '"') else ""} \
      ~{if defined(min_alternate_q_sum) then ("--min-alternate-qsum " +  '"' + min_alternate_q_sum + '"') else ""} \
      ~{if defined(min_alternate_total) then ("--min-alternate-total " +  '"' + min_alternate_total + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(limit_coverage) then ("--limit-coverage " +  '"' + limit_coverage + '"') else ""} \
      ~{if defined(skip_coverage) then ("--skip-coverage " +  '"' + skip_coverage + '"') else ""} \
      ~{true="--no-population-priors" false="" no_population_priors} \
      ~{true="--hwe-priors-off" false="" h_we_priors_off} \
      ~{true="--binomial-obs-priors-off" false="" binomial_obs_priors_off} \
      ~{true="--allele-balance-priors-off" false="" allele_balance_priors_off} \
      ~{if defined(observation_bias) then ("--observation-bias " +  '"' + observation_bias + '"') else ""} \
      ~{if defined(base_quality_cap) then ("--base-quality-cap " +  '"' + base_quality_cap + '"') else ""} \
      ~{if defined(prob_contamination) then ("--prob-contamination " +  '"' + prob_contamination + '"') else ""} \
      ~{true="--legacy-gls" false="" legacy_gls} \
      ~{if defined(contamination_estimates) then ("--contamination-estimates " +  '"' + contamination_estimates + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{true="-dd" false="" dd}
  >>>
  parameter_meta {
    haplotype_length: "aln.bam"
    min_alternate_fraction: "Require at least this fraction of observations supporting an alternate allele within a single individual in the in order to evaluate the position.  default: 0.05"
    samples: "Limit analysis to samples listed (one per line) in the FILE. By default FreeBayes will analyze all samples in its input BAM files."
    populations: "Each line of FILE should list a sample and a population which it is part of.  The population-based bayesian inference model will then be partitioned on the basis of the populations."
    cnv_map: "Read a copy number map from the BED file FILE, which has either a sample-level ploidy: sample_name copy_number or a region-specific format: seq_name start end sample_name copy_number ... for each region in each sample which does not have the default copy number as set by --ploidy. These fields can be delimited by space or tab."
    variant_input: "Use variants reported in VCF file as input to the algorithm. Variants in this file will included in the output even if there is not enough support in the data to pass input filters."
    only_use_input_alleles: "Only provide variant calls and genotype likelihoods for sites and alleles which are provided in the VCF input, and provide output in the VCF for all input alleles, not just those which have support in the data."
    haplotype_basis_alleles: "When specified, only variant alleles provided in this input VCF will be used for the construction of complex or haplotype alleles."
    report_all_haplotype_alleles: "At sites where genotypes are made over haplotype alleles, provide information about all alleles in output, not only those which are called."
    p_var: "Report sites if the probability that there is a polymorphism at the site is greater than N.  default: 0.0.  Note that post- filtering is generally recommended over the use of this parameter."
    strict_vcf: "Generate strict VCF format (FORMAT/GQ will be an int)"
    theta: "The expected mutation rate or pairwise nucleotide diversity among the population under analysis.  This serves as the single parameter to the Ewens Sampling Formula prior model default: 0.001"
    ploidy: "Sets the default ploidy for the analysis to N.  default: 2"
    pooled_discrete: "Assume that samples result from pooled sequencing. Model pooled samples using discrete genotypes across pools. When using this flag, set --ploidy to the number of alleles in each sample or use the --cnv-map to define per-sample ploidy."
    pooled_continuous: "Output all alleles which pass input filters, regardles of genotyping outcome or model."
    use_best_n_alleles: "Evaluate only the best N SNP alleles, ranked by sum of supporting quality scores.  (Set to 0 to use all; default: all)"
    max_complex_gap: "--haplotype-length N Allow haplotype calls with contiguous embedded matches of up to this length. Set N=-1 to disable clumping. (default: 3)"
    min_repeat_size: "When assembling observations across repeats, require the total repeat length at least this many bp.  (default: 5)"
    min_repeat_entropy: "To detect interrupted repeats, build across sequence until it has entropy > N bits per bp. Set to 0 to turn off. (default: 1)"
    no_partial_observations: "Exclude observations which do not fully span the dynamically-determined detection window.  (default, use all observations, dividing partial support across matching haplotypes when generating haplotypes.)"
    throw_away_snp_obs: "Remove SNP observations from input."
    throw_away_indels_obs: "Remove indel observations from input."
    throw_away_mnp_obs: "Remove MNP observations from input."
    throw_away_complex_obs: "complex allele observations from input."
    dont_left_align_indels: "Turn off left-alignment of indels, which is enabled by default."
    min_alternate_count: "Require at least this count of observations supporting an alternate allele within a single individual in order to evaluate the position.  default: 2"
    min_alternate_q_sum: "Require at least this sum of quality of observations supporting an alternate allele within a single individual in order to evaluate the position.  default: 0"
    min_alternate_total: "Require at least this count of observations supporting an alternate allele within the total population in order to use the allele in analysis.  default: 1"
    min_coverage: "Require at least this coverage to process a site. default: 0"
    limit_coverage: "Downsample per-sample coverage to this level if greater than this coverage. default: no limit"
    skip_coverage: "Skip processing of alignments overlapping positions with coverage >N. This filters sites above this coverage, but will also reduce data nearby. default: no limit"
    no_population_priors: "Equivalent to --pooled-discrete --hwe-priors-off and removal of Ewens Sampling Formula component of priors."
    h_we_priors_off: "Disable estimation of the probability of the combination arising under HWE given the allele frequency as estimated by observation frequency."
    binomial_obs_priors_off: "Disable incorporation of prior expectations about observations. Uses read placement probability, strand balance probability, and read position (5'-3') probability."
    allele_balance_priors_off: "Disable use of aggregate probability of observation balance between alleles as a component of the priors."
    observation_bias: "Read length-dependent allele observation biases from FILE. The format is [length] [alignment efficiency relative to reference] where the efficiency is 1 if there is no relative observation bias."
    base_quality_cap: "Limit estimated observation quality by capping base quality at Q."
    prob_contamination: "An estimate of contamination to use for all samples.  default: 10e-9"
    legacy_gls: "Use legacy (polybayes equivalent) genotype likelihood calculations"
    contamination_estimates: "A file containing per-sample estimates of contamination, such as those generated by VerifyBamID.  The format should be: sample p(read=R|genotype=AR) p(read=A|genotype=AA) Sample '*' can be used to set default contamination estimates."
    debug: "Print debugging output."
    dd: "Print more verbose debugging output (requires \"make DEBUG\")"
    calculations_dot: "default: 0.9"
  }
}