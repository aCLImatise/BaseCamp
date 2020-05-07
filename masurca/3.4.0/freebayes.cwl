class: CommandLineTool
id: freebayes.cwl
inputs:
- id: haplotype_length
  doc: 50 aln.bam
  type: boolean
  inputBinding:
    prefix: --haplotype-length
- id: min_alternate_fraction
  doc: 0 --pooled-continuous --report-monomorphic >var.vcf
  type: boolean
  inputBinding:
    prefix: --min-alternate-fraction
- id: samples
  doc: Limit analysis to samples listed (one per line) in the FILE. By default FreeBayes
    will analyze all samples in its input BAM files.
  type: File
  inputBinding:
    prefix: --samples
- id: populations
  doc: Each line of FILE should list a sample and a population which it is part of.  The
    population-based bayesian inference model will then be partitioned on the basis
    of the populations.
  type: File
  inputBinding:
    prefix: --populations
- id: cnv_map
  doc: 'Read a copy number map from the BED file FILE, which has either a sample-level
    ploidy: sample_name copy_number or a region-specific format: seq_name start end
    sample_name copy_number ... for each region in each sample which does not have
    the default copy number as set by --ploidy. These fields can be delimited by space
    or tab.'
  type: File
  inputBinding:
    prefix: --cnv-map
- id: variant_input
  doc: Use variants reported in VCF file as input to the algorithm. Variants in this
    file will included in the output even if there is not enough support in the data
    to pass input filters.
  type: string
  inputBinding:
    prefix: --variant-input
- id: only_use_input_alleles
  doc: Only provide variant calls and genotype likelihoods for sites and alleles which
    are provided in the VCF input, and provide output in the VCF for all input alleles,
    not just those which have support in the data.
  type: boolean
  inputBinding:
    prefix: --only-use-input-alleles
- id: haplotype_basis_alleles
  doc: When specified, only variant alleles provided in this input VCF will be used
    for the construction of complex or haplotype alleles.
  type: string
  inputBinding:
    prefix: --haplotype-basis-alleles
- id: report_all_haplotype_alleles
  doc: At sites where genotypes are made over haplotype alleles, provide information
    about all alleles in output, not only those which are called.
  type: boolean
  inputBinding:
    prefix: --report-all-haplotype-alleles
- id: report_monomorphic
  doc: Report even loci which appear to be monomorphic, and report all considered
    alleles, even those which are not in called genotypes. Loci which do not have
    any potential alternates have '.' for ALT.
  type: boolean
  inputBinding:
    prefix: --report-monomorphic
- id: p_var
  doc: 'Report sites if the probability that there is a polymorphism at the site is
    greater than N.  default: 0.0.  Note that post- filtering is generally recommended
    over the use of this parameter.'
  type: string
  inputBinding:
    prefix: --pvar
- id: strict_vcf
  doc: Generate strict VCF format (FORMAT/GQ will be an int)
  type: boolean
  inputBinding:
    prefix: --strict-vcf
- id: theta
  doc: 'The expected mutation rate or pairwise nucleotide diversity among the population
    under analysis.  This serves as the single parameter to the Ewens Sampling Formula
    prior model default: 0.001'
  type: string
  inputBinding:
    prefix: --theta
- id: ploidy
  doc: 'Sets the default ploidy for the analysis to N.  default: 2'
  type: string
  inputBinding:
    prefix: --ploidy
- id: pooled_discrete
  doc: Assume that samples result from pooled sequencing. Model pooled samples using
    discrete genotypes across pools. When using this flag, set --ploidy to the number
    of alleles in each sample or use the --cnv-map to define per-sample ploidy.
  type: boolean
  inputBinding:
    prefix: --pooled-discrete
- id: pooled_continuous
  doc: Output all alleles which pass input filters, regardles of genotyping outcome
    or model.
  type: boolean
  inputBinding:
    prefix: --pooled-continuous
- id: use_best_n_alleles
  doc: 'Evaluate only the best N SNP alleles, ranked by sum of supporting quality
    scores.  (Set to 0 to use all; default: all)'
  type: string
  inputBinding:
    prefix: --use-best-n-alleles
- id: max_complex_gap
  doc: '--haplotype-length N Allow haplotype calls with contiguous embedded matches
    of up to this length. Set N=-1 to disable clumping. (default: 3)'
  type: string
  inputBinding:
    prefix: --max-complex-gap
- id: min_repeat_size
  doc: 'When assembling observations across repeats, require the total repeat length
    at least this many bp.  (default: 5)'
  type: string
  inputBinding:
    prefix: --min-repeat-size
- id: min_repeat_entropy
  doc: 'To detect interrupted repeats, build across sequence until it has entropy
    > N bits per bp. Set to 0 to turn off. (default: 1)'
  type: string
  inputBinding:
    prefix: --min-repeat-entropy
- id: no_partial_observations
  doc: Exclude observations which do not fully span the dynamically-determined detection
    window.  (default, use all observations, dividing partial support across matching
    haplotypes when generating haplotypes.)
  type: boolean
  inputBinding:
    prefix: --no-partial-observations
- id: throw_away_snp_obs
  doc: Remove SNP observations from input.
  type: boolean
  inputBinding:
    prefix: --throw-away-snp-obs
- id: throw_away_indels_obs
  doc: Remove indel observations from input.
  type: boolean
  inputBinding:
    prefix: --throw-away-indels-obs
- id: throw_away_mnp_obs
  doc: Remove MNP observations from input.
  type: boolean
  inputBinding:
    prefix: --throw-away-mnp-obs
- id: throw_away_complex_obs
  doc: complex allele observations from input.
  type: string
  inputBinding:
    prefix: --throw-away-complex-obs
- id: dont_left_align_indels
  doc: Turn off left-alignment of indels, which is enabled by default.
  type: boolean
  inputBinding:
    prefix: --dont-left-align-indels
- id: min_alternate_total
  doc: 'Require at least this count of observations supporting an alternate allele
    within the total population in order to use the allele in analysis.  default:
    1'
  type: string
  inputBinding:
    prefix: --min-alternate-total
- id: min_coverage
  doc: 'Require at least this coverage to process a site. default: 0'
  type: string
  inputBinding:
    prefix: --min-coverage
- id: limit_coverage
  doc: 'Downsample per-sample coverage to this level if greater than this coverage.
    default: no limit'
  type: string
  inputBinding:
    prefix: --limit-coverage
- id: skip_coverage
  doc: 'Skip processing of alignments overlapping positions with coverage >N. This
    filters sites above this coverage, but will also reduce data nearby. default:
    no limit'
  type: string
  inputBinding:
    prefix: --skip-coverage
- id: no_population_priors
  doc: Equivalent to --pooled-discrete --hwe-priors-off and removal of Ewens Sampling
    Formula component of priors.
  type: boolean
  inputBinding:
    prefix: --no-population-priors
- id: h_we_priors_off
  doc: Disable estimation of the probability of the combination arising under HWE
    given the allele frequency as estimated by observation frequency.
  type: boolean
  inputBinding:
    prefix: --hwe-priors-off
- id: binomial_obs_priors_off
  doc: Disable incorporation of prior expectations about observations. Uses read placement
    probability, strand balance probability, and read position (5'-3') probability.
  type: boolean
  inputBinding:
    prefix: --binomial-obs-priors-off
- id: allele_balance_priors_off
  doc: Disable use of aggregate probability of observation balance between alleles
    as a component of the priors.
  type: boolean
  inputBinding:
    prefix: --allele-balance-priors-off
- id: observation_bias
  doc: Read length-dependent allele observation biases from FILE. The format is [length]
    [alignment efficiency relative to reference] where the efficiency is 1 if there
    is no relative observation bias.
  type: File
  inputBinding:
    prefix: --observation-bias
- id: base_quality_cap
  doc: Limit estimated observation quality by capping base quality at Q.
  type: string
  inputBinding:
    prefix: --base-quality-cap
- id: prob_contamination
  doc: 'An estimate of contamination to use for all samples.  default: 10e-9'
  type: string
  inputBinding:
    prefix: --prob-contamination
- id: legacy_gls
  doc: Use legacy (polybayes equivalent) genotype likelihood calculations
  type: boolean
  inputBinding:
    prefix: --legacy-gls
- id: contamination_estimates
  doc: "A file containing per-sample estimates of contamination, such as those generated\
    \ by VerifyBamID.  The format should be: sample p(read=R|genotype=AR) p(read=A|genotype=AA)\
    \ Sample '*' can be used to set default contamination estimates."
  type: File
  inputBinding:
    prefix: --contamination-estimates
- id: debug
  doc: Print debugging output.
  type: boolean
  inputBinding:
    prefix: --debug
- id: dd
  doc: Print more verbose debugging output (requires "make DEBUG")
  type: boolean
  inputBinding:
    prefix: -dd
outputs: []
cwlVersion: v1.1
baseCommand:
- freebayes
