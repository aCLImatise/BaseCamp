version 1.0

task Freebayes {
  input {
    Int? max_complex_gap
    Int? min_alternate_fraction
    File? bam
    File? bam_list
    Boolean? stdin
    File? fast_a_reference
    File? targets
    Int? region
    File? samples
    File? populations
    File? cnv_map
    File? vcf
    Boolean? gvc_f
    Int? gvc_f_chunk
    File? variant_input
    Boolean? only_use_input_alleles
    String? haplotype_basis_alleles
    Boolean? report_all_haplotype_alleles
    Float? p_var
    Boolean? strict_vcf
    Float? theta
    Int? ploidy
    Boolean? pooled_discrete
    Boolean? pooled_continuous
    Boolean? use_reference_allele
    Int? reference_quality
    Int? use_best_n_alleles
    Int? min_repeat_size
    Int? min_repeat_entropy
    Boolean? no_partial_observations
    Boolean? throw_away_snp_obs
    Boolean? throw_away_indels_obs
    Boolean? throw_away_mnp_obs
    String? throw_away_complex_obs
    Boolean? dont_left_align_indels
    Boolean? use_duplicate_reads
    Int? min_mapping_quality
    Int? min_base_quality
    Int? min_supporting_allele_q_sum
    Int? min_supporting_mapping_q_sum
    Int? mismatch_base_quality_threshold
    String? read_mismatch_limit
    Int? read_max_mismatch_fraction
    String? read_in_del_limit
    Boolean? standard_filters
    Int? min_alternate_count
    Int? min_alternate_q_sum
    Int? min_alternate_total
    Int? min_coverage
    String? limit_coverage
    String? skip_coverage
    Boolean? no_population_priors
    Boolean? h_we_priors_off
    Boolean? binomial_obs_priors_off
    Boolean? allele_balance_priors_off
    File? observation_bias
    String? base_quality_cap
    Float? prob_contamination
    Boolean? legacy_gls
    File? contamination_estimates
    Boolean? report_genotype_likelihood_max
    Int? genotyping_max_iterations
    Int? genotyping_max_band_depth
    Int? posterior_integration_limits
    Boolean? exclude_unobserved_genotypes
    String? genotype_variant_threshold
    Boolean? use_mapping_quality
    Boolean? harmonic_in_del_quality
    Float? read_dependence_factor
    Boolean? debug
    Boolean? dd
  }
  command <<<
    freebayes \
      ~{if defined(max_complex_gap) then ("--max-complex-gap " +  '"' + max_complex_gap + '"') else ""} \
      ~{if defined(min_alternate_fraction) then ("--min-alternate-fraction " +  '"' + min_alternate_fraction + '"') else ""} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(bam_list) then ("--bam-list " +  '"' + bam_list + '"') else ""} \
      ~{if (stdin) then "--stdin" else ""} \
      ~{if defined(fast_a_reference) then ("--fasta-reference " +  '"' + fast_a_reference + '"') else ""} \
      ~{if defined(targets) then ("--targets " +  '"' + targets + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(populations) then ("--populations " +  '"' + populations + '"') else ""} \
      ~{if defined(cnv_map) then ("--cnv-map " +  '"' + cnv_map + '"') else ""} \
      ~{if defined(vcf) then ("--vcf " +  '"' + vcf + '"') else ""} \
      ~{if (gvc_f) then "--gvcf" else ""} \
      ~{if defined(gvc_f_chunk) then ("--gvcf-chunk " +  '"' + gvc_f_chunk + '"') else ""} \
      ~{if defined(variant_input) then ("--variant-input " +  '"' + variant_input + '"') else ""} \
      ~{if (only_use_input_alleles) then "--only-use-input-alleles" else ""} \
      ~{if defined(haplotype_basis_alleles) then ("--haplotype-basis-alleles " +  '"' + haplotype_basis_alleles + '"') else ""} \
      ~{if (report_all_haplotype_alleles) then "--report-all-haplotype-alleles" else ""} \
      ~{if defined(p_var) then ("--pvar " +  '"' + p_var + '"') else ""} \
      ~{if (strict_vcf) then "--strict-vcf" else ""} \
      ~{if defined(theta) then ("--theta " +  '"' + theta + '"') else ""} \
      ~{if defined(ploidy) then ("--ploidy " +  '"' + ploidy + '"') else ""} \
      ~{if (pooled_discrete) then "--pooled-discrete" else ""} \
      ~{if (pooled_continuous) then "--pooled-continuous" else ""} \
      ~{if (use_reference_allele) then "--use-reference-allele" else ""} \
      ~{if defined(reference_quality) then ("--reference-quality " +  '"' + reference_quality + '"') else ""} \
      ~{if defined(use_best_n_alleles) then ("--use-best-n-alleles " +  '"' + use_best_n_alleles + '"') else ""} \
      ~{if defined(min_repeat_size) then ("--min-repeat-size " +  '"' + min_repeat_size + '"') else ""} \
      ~{if defined(min_repeat_entropy) then ("--min-repeat-entropy " +  '"' + min_repeat_entropy + '"') else ""} \
      ~{if (no_partial_observations) then "--no-partial-observations" else ""} \
      ~{if (throw_away_snp_obs) then "--throw-away-snp-obs" else ""} \
      ~{if (throw_away_indels_obs) then "--throw-away-indels-obs" else ""} \
      ~{if (throw_away_mnp_obs) then "--throw-away-mnp-obs" else ""} \
      ~{if defined(throw_away_complex_obs) then ("--throw-away-complex-obs " +  '"' + throw_away_complex_obs + '"') else ""} \
      ~{if (dont_left_align_indels) then "--dont-left-align-indels" else ""} \
      ~{if (use_duplicate_reads) then "--use-duplicate-reads" else ""} \
      ~{if defined(min_mapping_quality) then ("--min-mapping-quality " +  '"' + min_mapping_quality + '"') else ""} \
      ~{if defined(min_base_quality) then ("--min-base-quality " +  '"' + min_base_quality + '"') else ""} \
      ~{if defined(min_supporting_allele_q_sum) then ("--min-supporting-allele-qsum " +  '"' + min_supporting_allele_q_sum + '"') else ""} \
      ~{if defined(min_supporting_mapping_q_sum) then ("--min-supporting-mapping-qsum " +  '"' + min_supporting_mapping_q_sum + '"') else ""} \
      ~{if defined(mismatch_base_quality_threshold) then ("--mismatch-base-quality-threshold " +  '"' + mismatch_base_quality_threshold + '"') else ""} \
      ~{if defined(read_mismatch_limit) then ("--read-mismatch-limit " +  '"' + read_mismatch_limit + '"') else ""} \
      ~{if defined(read_max_mismatch_fraction) then ("--read-max-mismatch-fraction " +  '"' + read_max_mismatch_fraction + '"') else ""} \
      ~{if defined(read_in_del_limit) then ("--read-indel-limit " +  '"' + read_in_del_limit + '"') else ""} \
      ~{if (standard_filters) then "--standard-filters" else ""} \
      ~{if defined(min_alternate_count) then ("--min-alternate-count " +  '"' + min_alternate_count + '"') else ""} \
      ~{if defined(min_alternate_q_sum) then ("--min-alternate-qsum " +  '"' + min_alternate_q_sum + '"') else ""} \
      ~{if defined(min_alternate_total) then ("--min-alternate-total " +  '"' + min_alternate_total + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(limit_coverage) then ("--limit-coverage " +  '"' + limit_coverage + '"') else ""} \
      ~{if defined(skip_coverage) then ("--skip-coverage " +  '"' + skip_coverage + '"') else ""} \
      ~{if (no_population_priors) then "--no-population-priors" else ""} \
      ~{if (h_we_priors_off) then "--hwe-priors-off" else ""} \
      ~{if (binomial_obs_priors_off) then "--binomial-obs-priors-off" else ""} \
      ~{if (allele_balance_priors_off) then "--allele-balance-priors-off" else ""} \
      ~{if defined(observation_bias) then ("--observation-bias " +  '"' + observation_bias + '"') else ""} \
      ~{if defined(base_quality_cap) then ("--base-quality-cap " +  '"' + base_quality_cap + '"') else ""} \
      ~{if defined(prob_contamination) then ("--prob-contamination " +  '"' + prob_contamination + '"') else ""} \
      ~{if (legacy_gls) then "--legacy-gls" else ""} \
      ~{if defined(contamination_estimates) then ("--contamination-estimates " +  '"' + contamination_estimates + '"') else ""} \
      ~{if (report_genotype_likelihood_max) then "--report-genotype-likelihood-max" else ""} \
      ~{if defined(genotyping_max_iterations) then ("--genotyping-max-iterations " +  '"' + genotyping_max_iterations + '"') else ""} \
      ~{if defined(genotyping_max_band_depth) then ("--genotyping-max-banddepth " +  '"' + genotyping_max_band_depth + '"') else ""} \
      ~{if defined(posterior_integration_limits) then ("--posterior-integration-limits " +  '"' + posterior_integration_limits + '"') else ""} \
      ~{if (exclude_unobserved_genotypes) then "--exclude-unobserved-genotypes" else ""} \
      ~{if defined(genotype_variant_threshold) then ("--genotype-variant-threshold " +  '"' + genotype_variant_threshold + '"') else ""} \
      ~{if (use_mapping_quality) then "--use-mapping-quality" else ""} \
      ~{if (harmonic_in_del_quality) then "--harmonic-indel-quality" else ""} \
      ~{if defined(read_dependence_factor) then ("--read-dependence-factor " +  '"' + read_dependence_factor + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (dd) then "-dd" else ""}
  >>>
  parameter_meta {
    max_complex_gap: "--haplotype-length N\\nAllow haplotype calls with contiguous embedded matches of up\\nto this length. Set N=-1 to disable clumping. (default: 3)"
    min_alternate_fraction: "Require at least this fraction of observations supporting\\nan alternate allele within a single individual in the\\nin order to evaluate the position.  default: 0.05"
    bam: "Add FILE to the set of BAM files to be analyzed."
    bam_list: "A file containing a list of BAM files to be analyzed."
    stdin: "Read BAM input on stdin."
    fast_a_reference: "Use FILE as the reference sequence for analysis.\\nAn index file (FILE.fai) will be created if none exists.\\nIf neither --targets nor --region are specified, FreeBayes\\nwill analyze every position in this reference."
    targets: "Limit analysis to targets listed in the BED-format FILE."
    region: ":<start_position>-<end_position>\\nLimit analysis to the specified region, 0-base coordinates,\\nend_position not included (same as BED format).\\nEither '-' or '..' maybe used as a separator."
    samples: "Limit analysis to samples listed (one per line) in the FILE.\\nBy default FreeBayes will analyze all samples in its input\\nBAM files."
    populations: "Each line of FILE should list a sample and a population which\\nit is part of.  The population-based bayesian inference model\\nwill then be partitioned on the basis of the populations."
    cnv_map: "Read a copy number map from the BED file FILE, which has\\neither a sample-level ploidy:\\nsample_name copy_number\\nor a region-specific format:\\nseq_name start end sample_name copy_number\\n... for each region in each sample which does not have the\\ndefault copy number as set by --ploidy. These fields can be delimited\\nby space or tab."
    vcf: "Output VCF-format results to FILE. (default: stdout)"
    gvc_f: "Write gVCF output, which indicates coverage in uncalled regions."
    gvc_f_chunk: "When writing gVCF output emit a record for every NUM bases."
    variant_input: "Use variants reported in VCF file as input to the algorithm.\\nVariants in this file will included in the output even if\\nthere is not enough support in the data to pass input filters."
    only_use_input_alleles: "Only provide variant calls and genotype likelihoods for sites\\nand alleles which are provided in the VCF input, and provide\\noutput in the VCF for all input alleles, not just those which\\nhave support in the data."
    haplotype_basis_alleles: "When specified, only variant alleles provided in this input\\nVCF will be used for the construction of complex or haplotype\\nalleles."
    report_all_haplotype_alleles: "At sites where genotypes are made over haplotype alleles,\\nprovide information about all alleles in output, not only\\nthose which are called."
    p_var: "Report sites if the probability that there is a polymorphism\\nat the site is greater than N.  default: 0.0.  Note that post-\\nfiltering is generally recommended over the use of this parameter."
    strict_vcf: "Generate strict VCF format (FORMAT/GQ will be an int)"
    theta: "The expected mutation rate or pairwise nucleotide diversity\\namong the population under analysis.  This serves as the\\nsingle parameter to the Ewens Sampling Formula prior model\\ndefault: 0.001"
    ploidy: "Sets the default ploidy for the analysis to N.  default: 2"
    pooled_discrete: "Assume that samples result from pooled sequencing.\\nModel pooled samples using discrete genotypes across pools.\\nWhen using this flag, set --ploidy to the number of\\nalleles in each sample or use the --cnv-map to define\\nper-sample ploidy."
    pooled_continuous: "Output all alleles which pass input filters, regardles of\\ngenotyping outcome or model."
    use_reference_allele: "This flag includes the reference allele in the analysis as\\nif it is another sample from the same population."
    reference_quality: ",BQ\\nAssign mapping quality of MQ to the reference allele at each\\nsite and base quality of BQ.  default: 100,60"
    use_best_n_alleles: "Evaluate only the best N SNP alleles, ranked by sum of\\nsupporting quality scores.  (Set to 0 to use all; default: all)"
    min_repeat_size: "When assembling observations across repeats, require the total repeat\\nlength at least this many bp.  (default: 5)"
    min_repeat_entropy: "To detect interrupted repeats, build across sequence until it has\\nentropy > N bits per bp. Set to 0 to turn off. (default: 1)"
    no_partial_observations: "Exclude observations which do not fully span the dynamically-determined\\ndetection window.  (default, use all observations, dividing partial\\nsupport across matching haplotypes when generating haplotypes.)"
    throw_away_snp_obs: "Remove SNP observations from input."
    throw_away_indels_obs: "Remove indel observations from input."
    throw_away_mnp_obs: "Remove MNP observations from input."
    throw_away_complex_obs: "complex allele observations from input."
    dont_left_align_indels: "Turn off left-alignment of indels, which is enabled by default."
    use_duplicate_reads: "Include duplicate-marked alignments in the analysis.\\ndefault: exclude duplicates marked as such in alignments"
    min_mapping_quality: "Exclude alignments from analysis if they have a mapping\\nquality less than Q.  default: 1"
    min_base_quality: "Exclude alleles from analysis if their supporting base\\nquality is less than Q.  default: 0"
    min_supporting_allele_q_sum: "Consider any allele in which the sum of qualities of supporting\\nobservations is at least Q.  default: 0"
    min_supporting_mapping_q_sum: "Consider any allele in which and the sum of mapping qualities of\\nsupporting reads is at least Q.  default: 0"
    mismatch_base_quality_threshold: "Count mismatches toward --read-mismatch-limit if the base\\nquality of the mismatch is >= Q.  default: 10"
    read_mismatch_limit: "Exclude reads with more than N mismatches where each mismatch\\nhas base quality >= mismatch-base-quality-threshold.\\ndefault: ~unbounded"
    read_max_mismatch_fraction: "Exclude reads with more than N [0,1] fraction of mismatches where\\neach mismatch has base quality >= mismatch-base-quality-threshold\\ndefault: 1.0"
    read_in_del_limit: "Exclude reads with more than N separate gaps.\\ndefault: ~unbounded"
    standard_filters: "Use stringent input base and mapping quality filters\\nEquivalent to -m 30 -q 20 -R 0 -S 0"
    min_alternate_count: "Require at least this count of observations supporting\\nan alternate allele within a single individual in order\\nto evaluate the position.  default: 2"
    min_alternate_q_sum: "Require at least this sum of quality of observations supporting\\nan alternate allele within a single individual in order\\nto evaluate the position.  default: 0"
    min_alternate_total: "Require at least this count of observations supporting\\nan alternate allele within the total population in order\\nto use the allele in analysis.  default: 1"
    min_coverage: "Require at least this coverage to process a site. default: 0"
    limit_coverage: "Downsample per-sample coverage to this level if greater than this coverage.\\ndefault: no limit"
    skip_coverage: "Skip processing of alignments overlapping positions with coverage >N.\\nThis filters sites above this coverage, but will also reduce data nearby.\\ndefault: no limit"
    no_population_priors: "Equivalent to --pooled-discrete --hwe-priors-off and removal of\\nEwens Sampling Formula component of priors."
    h_we_priors_off: "Disable estimation of the probability of the combination\\narising under HWE given the allele frequency as estimated\\nby observation frequency."
    binomial_obs_priors_off: "Disable incorporation of prior expectations about observations.\\nUses read placement probability, strand balance probability,\\nand read position (5'-3') probability."
    allele_balance_priors_off: "Disable use of aggregate probability of observation balance between alleles\\nas a component of the priors."
    observation_bias: "Read length-dependent allele observation biases from FILE.\\nThe format is [length] [alignment efficiency relative to reference]\\nwhere the efficiency is 1 if there is no relative observation bias."
    base_quality_cap: "Limit estimated observation quality by capping base quality at Q."
    prob_contamination: "An estimate of contamination to use for all samples.  default: 10e-9"
    legacy_gls: "Use legacy (polybayes equivalent) genotype likelihood calculations"
    contamination_estimates: "A file containing per-sample estimates of contamination, such as\\nthose generated by VerifyBamID.  The format should be:\\nsample p(read=R|genotype=AR) p(read=A|genotype=AA)\\nSample '*' can be used to set default contamination estimates."
    report_genotype_likelihood_max: "Report genotypes using the maximum-likelihood estimate provided\\nfrom genotype likelihoods."
    genotyping_max_iterations: "Iterate no more than N times during genotyping step. default: 1000."
    genotyping_max_band_depth: "Integrate no deeper than the Nth best genotype by likelihood when\\ngenotyping. default: 6."
    posterior_integration_limits: ",M\\nIntegrate all genotype combinations in our posterior space\\nwhich include no more than N samples with their Mth best\\ndata likelihood. default: 1,3."
    exclude_unobserved_genotypes: "Skip sample genotypings for which the sample has no supporting reads."
    genotype_variant_threshold: "Limit posterior integration to samples where the second-best\\ngenotype likelihood is no more than log(N) from the highest\\ngenotype likelihood for the sample.  default: ~unbounded"
    use_mapping_quality: "Use mapping quality of alleles when calculating data likelihoods."
    harmonic_in_del_quality: "Use a weighted sum of base qualities around an indel, scaled by the\\ndistance from the indel.  By default use a minimum BQ in flanking sequence."
    read_dependence_factor: "Incorporate non-independence of reads by scaling successive\\nobservations by this factor during data likelihood\\ncalculations.  default: 0.9"
    debug: "Print debugging output."
    dd: "Print more verbose debugging output (requires \\\"make DEBUG\\\")"
  }
  output {
    File out_stdout = stdout()
    File out_vcf = "${in_vcf}"
  }
}