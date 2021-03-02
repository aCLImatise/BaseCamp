class: CommandLineTool
id: freebayes.cwl
inputs:
- id: in_max_complex_gap
  doc: ', which defaults to 3bp.  In practice, this can comfortably be'
  type: boolean?
  inputBinding:
    prefix: --max-complex-gap
- id: in_bam
  doc: Add FILE to the set of BAM files to be analyzed.
  type: File?
  inputBinding:
    prefix: --bam
- id: in_bam_list
  doc: A file containing a list of BAM files to be analyzed.
  type: File?
  inputBinding:
    prefix: --bam-list
- id: in_stdin
  doc: Read BAM input on stdin.
  type: boolean?
  inputBinding:
    prefix: --stdin
- id: in_fast_a_reference
  doc: "Use FILE as the reference sequence for analysis.\nAn index file (FILE.fai)\
    \ will be created if none exists.\nIf neither --targets nor --region are specified,\
    \ FreeBayes\nwill analyze every position in this reference."
  type: File?
  inputBinding:
    prefix: --fasta-reference
- id: in_targets
  doc: Limit analysis to targets listed in the BED-format FILE.
  type: File?
  inputBinding:
    prefix: --targets
- id: in_region
  doc: ":<start_position>-<end_position>\nLimit analysis to the specified region,\
    \ 0-base coordinates,\nend_position not included (same as BED format).\nEither\
    \ '-' or '..' maybe used as a separator."
  type: long?
  inputBinding:
    prefix: --region
- id: in_samples
  doc: "Limit analysis to samples listed (one per line) in the FILE.\nBy default FreeBayes\
    \ will analyze all samples in its input\nBAM files."
  type: File?
  inputBinding:
    prefix: --samples
- id: in_populations
  doc: "Each line of FILE should list a sample and a population which\nit is part\
    \ of.  The population-based bayesian inference model\nwill then be partitioned\
    \ on the basis of the populations."
  type: File?
  inputBinding:
    prefix: --populations
- id: in_cnv_map
  doc: "Read a copy number map from the BED file FILE, which has\neither a sample-level\
    \ ploidy:\nsample_name copy_number\nor a region-specific format:\nseq_name start\
    \ end sample_name copy_number\n... for each region in each sample which does not\
    \ have the\ndefault copy number as set by --ploidy. These fields can be delimited\n\
    by space or tab."
  type: File?
  inputBinding:
    prefix: --cnv-map
- id: in_vcf
  doc: 'Output VCF-format results to FILE. (default: stdout)'
  type: File?
  inputBinding:
    prefix: --vcf
- id: in_gvc_f
  doc: Write gVCF output, which indicates coverage in uncalled regions.
  type: boolean?
  inputBinding:
    prefix: --gvcf
- id: in_gvc_f_chunk
  doc: When writing gVCF output emit a record for every NUM bases.
  type: long?
  inputBinding:
    prefix: --gvcf-chunk
- id: in_variant_input
  doc: "Use variants reported in VCF file as input to the algorithm.\nVariants in\
    \ this file will included in the output even if\nthere is not enough support in\
    \ the data to pass input filters."
  type: File?
  inputBinding:
    prefix: --variant-input
- id: in_only_use_input_alleles
  doc: "Only provide variant calls and genotype likelihoods for sites\nand alleles\
    \ which are provided in the VCF input, and provide\noutput in the VCF for all\
    \ input alleles, not just those which\nhave support in the data."
  type: boolean?
  inputBinding:
    prefix: --only-use-input-alleles
- id: in_haplotype_basis_alleles
  doc: "When specified, only variant alleles provided in this input\nVCF will be used\
    \ for the construction of complex or haplotype\nalleles."
  type: string?
  inputBinding:
    prefix: --haplotype-basis-alleles
- id: in_report_all_haplotype_alleles
  doc: "At sites where genotypes are made over haplotype alleles,\nprovide information\
    \ about all alleles in output, not only\nthose which are called."
  type: boolean?
  inputBinding:
    prefix: --report-all-haplotype-alleles
- id: in_report_monomorphic
  doc: "Report even loci which appear to be monomorphic, and report all\nconsidered\
    \ alleles, even those which are not in called genotypes.\nLoci which do not have\
    \ any potential alternates have '.' for ALT."
  type: boolean?
  inputBinding:
    prefix: --report-monomorphic
- id: in_p_var
  doc: "Report sites if the probability that there is a polymorphism\nat the site\
    \ is greater than N.  default: 0.0.  Note that post-\nfiltering is generally recommended\
    \ over the use of this parameter."
  type: double?
  inputBinding:
    prefix: --pvar
- id: in_strict_vcf
  doc: Generate strict VCF format (FORMAT/GQ will be an int)
  type: boolean?
  inputBinding:
    prefix: --strict-vcf
- id: in_theta
  doc: "The expected mutation rate or pairwise nucleotide diversity\namong the population\
    \ under analysis.  This serves as the\nsingle parameter to the Ewens Sampling\
    \ Formula prior model\ndefault: 0.001"
  type: double?
  inputBinding:
    prefix: --theta
- id: in_ploidy
  doc: 'Sets the default ploidy for the analysis to N.  default: 2'
  type: long?
  inputBinding:
    prefix: --ploidy
- id: in_pooled_discrete
  doc: "Assume that samples result from pooled sequencing.\nModel pooled samples using\
    \ discrete genotypes across pools.\nWhen using this flag, set --ploidy to the\
    \ number of\nalleles in each sample or use the --cnv-map to define\nper-sample\
    \ ploidy."
  type: boolean?
  inputBinding:
    prefix: --pooled-discrete
- id: in_pooled_continuous
  doc: "Output all alleles which pass input filters, regardles of\ngenotyping outcome\
    \ or model."
  type: boolean?
  inputBinding:
    prefix: --pooled-continuous
- id: in_use_reference_allele
  doc: "This flag includes the reference allele in the analysis as\nif it is another\
    \ sample from the same population."
  type: boolean?
  inputBinding:
    prefix: --use-reference-allele
- id: in_reference_quality
  doc: ",BQ\nAssign mapping quality of MQ to the reference allele at each\nsite and\
    \ base quality of BQ.  default: 100,60"
  type: long?
  inputBinding:
    prefix: --reference-quality
- id: in_use_best_n_alleles
  doc: "Evaluate only the best N SNP alleles, ranked by sum of\nsupporting quality\
    \ scores.  (Set to 0 to use all; default: all)"
  type: long?
  inputBinding:
    prefix: --use-best-n-alleles
- id: in_haplotype_length
  doc: "Allow haplotype calls with contiguous embedded matches of up\nto this length.\
    \ Set N=-1 to disable clumping. (default: 3)"
  type: long?
  inputBinding:
    prefix: --haplotype-length
- id: in_min_repeat_size
  doc: "When assembling observations across repeats, require the total repeat\nlength\
    \ at least this many bp.  (default: 5)"
  type: long?
  inputBinding:
    prefix: --min-repeat-size
- id: in_min_repeat_entropy
  doc: "To detect interrupted repeats, build across sequence until it has\nentropy\
    \ > N bits per bp. Set to 0 to turn off. (default: 1)"
  type: long?
  inputBinding:
    prefix: --min-repeat-entropy
- id: in_no_partial_observations
  doc: "Exclude observations which do not fully span the dynamically-determined\n\
    detection window.  (default, use all observations, dividing partial\nsupport across\
    \ matching haplotypes when generating haplotypes.)"
  type: boolean?
  inputBinding:
    prefix: --no-partial-observations
- id: in_throw_away_snp_obs
  doc: Remove SNP observations from input.
  type: boolean?
  inputBinding:
    prefix: --throw-away-snp-obs
- id: in_throw_away_indels_obs
  doc: Remove indel observations from input.
  type: boolean?
  inputBinding:
    prefix: --throw-away-indels-obs
- id: in_throw_away_mnp_obs
  doc: Remove MNP observations from input.
  type: boolean?
  inputBinding:
    prefix: --throw-away-mnp-obs
- id: in_throw_away_complex_obs
  doc: complex allele observations from input.
  type: string?
  inputBinding:
    prefix: --throw-away-complex-obs
- id: in_dont_left_align_indels
  doc: Turn off left-alignment of indels, which is enabled by default.
  type: boolean?
  inputBinding:
    prefix: --dont-left-align-indels
- id: in_use_duplicate_reads
  doc: "Include duplicate-marked alignments in the analysis.\ndefault: exclude duplicates\
    \ marked as such in alignments"
  type: boolean?
  inputBinding:
    prefix: --use-duplicate-reads
- id: in_min_mapping_quality
  doc: "Exclude alignments from analysis if they have a mapping\nquality less than\
    \ Q.  default: 1"
  type: long?
  inputBinding:
    prefix: --min-mapping-quality
- id: in_min_base_quality
  doc: "Exclude alleles from analysis if their supporting base\nquality is less than\
    \ Q.  default: 0"
  type: long?
  inputBinding:
    prefix: --min-base-quality
- id: in_min_supporting_allele_q_sum
  doc: "Consider any allele in which the sum of qualities of supporting\nobservations\
    \ is at least Q.  default: 0"
  type: long?
  inputBinding:
    prefix: --min-supporting-allele-qsum
- id: in_min_supporting_mapping_q_sum
  doc: "Consider any allele in which and the sum of mapping qualities of\nsupporting\
    \ reads is at least Q.  default: 0"
  type: long?
  inputBinding:
    prefix: --min-supporting-mapping-qsum
- id: in_mismatch_base_quality_threshold
  doc: "Count mismatches toward --read-mismatch-limit if the base\nquality of the\
    \ mismatch is >= Q.  default: 10"
  type: long?
  inputBinding:
    prefix: --mismatch-base-quality-threshold
- id: in_read_mismatch_limit
  doc: "Exclude reads with more than N mismatches where each mismatch\nhas base quality\
    \ >= mismatch-base-quality-threshold.\ndefault: ~unbounded"
  type: string?
  inputBinding:
    prefix: --read-mismatch-limit
- id: in_read_max_mismatch_fraction
  doc: "Exclude reads with more than N [0,1] fraction of mismatches where\neach mismatch\
    \ has base quality >= mismatch-base-quality-threshold\ndefault: 1.0"
  type: long?
  inputBinding:
    prefix: --read-max-mismatch-fraction
- id: in_read_in_del_limit
  doc: "Exclude reads with more than N separate gaps.\ndefault: ~unbounded"
  type: string?
  inputBinding:
    prefix: --read-indel-limit
- id: in_standard_filters
  doc: "Use stringent input base and mapping quality filters\nEquivalent to -m 30\
    \ -q 20 -R 0 -S 0"
  type: boolean?
  inputBinding:
    prefix: --standard-filters
- id: in_min_alternate_fraction
  doc: "Require at least this fraction of observations supporting\nan alternate allele\
    \ within a single individual in the\nin order to evaluate the position.  default:\
    \ 0.05"
  type: long?
  inputBinding:
    prefix: --min-alternate-fraction
- id: in_min_alternate_count
  doc: "Require at least this count of observations supporting\nan alternate allele\
    \ within a single individual in order\nto evaluate the position.  default: 2"
  type: long?
  inputBinding:
    prefix: --min-alternate-count
- id: in_min_alternate_q_sum
  doc: "Require at least this sum of quality of observations supporting\nan alternate\
    \ allele within a single individual in order\nto evaluate the position.  default:\
    \ 0"
  type: long?
  inputBinding:
    prefix: --min-alternate-qsum
- id: in_min_alternate_total
  doc: "Require at least this count of observations supporting\nan alternate allele\
    \ within the total population in order\nto use the allele in analysis.  default:\
    \ 1"
  type: long?
  inputBinding:
    prefix: --min-alternate-total
- id: in_min_coverage
  doc: 'Require at least this coverage to process a site. default: 0'
  type: long?
  inputBinding:
    prefix: --min-coverage
- id: in_limit_coverage
  doc: "Downsample per-sample coverage to this level if greater than this coverage.\n\
    default: no limit"
  type: string?
  inputBinding:
    prefix: --limit-coverage
- id: in_skip_coverage
  doc: "Skip processing of alignments overlapping positions with coverage >N.\nThis\
    \ filters sites above this coverage, but will also reduce data nearby.\ndefault:\
    \ no limit"
  type: string?
  inputBinding:
    prefix: --skip-coverage
- id: in_no_population_priors
  doc: "Equivalent to --pooled-discrete --hwe-priors-off and removal of\nEwens Sampling\
    \ Formula component of priors."
  type: boolean?
  inputBinding:
    prefix: --no-population-priors
- id: in_h_we_priors_off
  doc: "Disable estimation of the probability of the combination\narising under HWE\
    \ given the allele frequency as estimated\nby observation frequency."
  type: boolean?
  inputBinding:
    prefix: --hwe-priors-off
- id: in_binomial_obs_priors_off
  doc: "Disable incorporation of prior expectations about observations.\nUses read\
    \ placement probability, strand balance probability,\nand read position (5'-3')\
    \ probability."
  type: boolean?
  inputBinding:
    prefix: --binomial-obs-priors-off
- id: in_allele_balance_priors_off
  doc: "Disable use of aggregate probability of observation balance between alleles\n\
    as a component of the priors."
  type: boolean?
  inputBinding:
    prefix: --allele-balance-priors-off
- id: in_observation_bias
  doc: "Read length-dependent allele observation biases from FILE.\nThe format is\
    \ [length] [alignment efficiency relative to reference]\nwhere the efficiency\
    \ is 1 if there is no relative observation bias."
  type: File?
  inputBinding:
    prefix: --observation-bias
- id: in_base_quality_cap
  doc: Limit estimated observation quality by capping base quality at Q.
  type: string?
  inputBinding:
    prefix: --base-quality-cap
- id: in_prob_contamination
  doc: 'An estimate of contamination to use for all samples.  default: 10e-9'
  type: double?
  inputBinding:
    prefix: --prob-contamination
- id: in_legacy_gls
  doc: Use legacy (polybayes equivalent) genotype likelihood calculations
  type: boolean?
  inputBinding:
    prefix: --legacy-gls
- id: in_contamination_estimates
  doc: "A file containing per-sample estimates of contamination, such as\nthose generated\
    \ by VerifyBamID.  The format should be:\nsample p(read=R|genotype=AR) p(read=A|genotype=AA)\n\
    Sample '*' can be used to set default contamination estimates."
  type: File?
  inputBinding:
    prefix: --contamination-estimates
- id: in_report_genotype_likelihood_max
  doc: "Report genotypes using the maximum-likelihood estimate provided\nfrom genotype\
    \ likelihoods."
  type: boolean?
  inputBinding:
    prefix: --report-genotype-likelihood-max
- id: in_genotyping_max_iterations
  doc: 'Iterate no more than N times during genotyping step. default: 1000.'
  type: long?
  inputBinding:
    prefix: --genotyping-max-iterations
- id: in_genotyping_max_band_depth
  doc: "Integrate no deeper than the Nth best genotype by likelihood when\ngenotyping.\
    \ default: 6."
  type: long?
  inputBinding:
    prefix: --genotyping-max-banddepth
- id: in_posterior_integration_limits
  doc: ",M\nIntegrate all genotype combinations in our posterior space\nwhich include\
    \ no more than N samples with their Mth best\ndata likelihood. default: 1,3."
  type: long?
  inputBinding:
    prefix: --posterior-integration-limits
- id: in_exclude_unobserved_genotypes
  doc: Skip sample genotypings for which the sample has no supporting reads.
  type: boolean?
  inputBinding:
    prefix: --exclude-unobserved-genotypes
- id: in_genotype_variant_threshold
  doc: "Limit posterior integration to samples where the second-best\ngenotype likelihood\
    \ is no more than log(N) from the highest\ngenotype likelihood for the sample.\
    \  default: ~unbounded"
  type: string?
  inputBinding:
    prefix: --genotype-variant-threshold
- id: in_use_mapping_quality
  doc: Use mapping quality of alleles when calculating data likelihoods.
  type: boolean?
  inputBinding:
    prefix: --use-mapping-quality
- id: in_harmonic_in_del_quality
  doc: "Use a weighted sum of base qualities around an indel, scaled by the\ndistance\
    \ from the indel.  By default use a minimum BQ in flanking sequence."
  type: boolean?
  inputBinding:
    prefix: --harmonic-indel-quality
- id: in_read_dependence_factor
  doc: "Incorporate non-independence of reads by scaling successive\nobservations\
    \ by this factor during data likelihood\ncalculations.  default: 0.9"
  type: double?
  inputBinding:
    prefix: --read-dependence-factor
- id: in_debug
  doc: Print debugging output.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_dd
  doc: Print more verbose debugging output (requires "make DEBUG")
  type: boolean?
  inputBinding:
    prefix: -dd
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_vcf
  doc: 'Output VCF-format results to FILE. (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_vcf)
hints: []
cwlVersion: v1.1
baseCommand:
- freebayes
