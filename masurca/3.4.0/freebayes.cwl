#!/usr/bin/env cwl-runner

baseCommand:
- freebayes
class: CommandLineTool
cwlVersion: v1.0
id: freebayes
inputs:
- doc: 50 aln.bam
  id: haplotype_length
  inputBinding:
    prefix: --haplotype-length
  type: boolean
- doc: 0 --pooled-continuous --report-monomorphic >var.vcf
  id: min_alternate_fraction
  inputBinding:
    prefix: --min-alternate-fraction
  type: boolean
- doc: Limit analysis to samples listed (one per line) in the FILE. By default FreeBayes
    will analyze all samples in its input BAM files.
  id: samples
  inputBinding:
    prefix: --samples
  type: File
- doc: Each line of FILE should list a sample and a population which it is part of.  The
    population-based bayesian inference model will then be partitioned on the basis
    of the populations.
  id: populations
  inputBinding:
    prefix: --populations
  type: File
- doc: 'Read a copy number map from the BED file FILE, which has either a sample-level
    ploidy: sample_name copy_number or a region-specific format: seq_name start end
    sample_name copy_number ... for each region in each sample which does not have
    the default copy number as set by --ploidy. These fields can be delimited by space
    or tab.'
  id: cnv_map
  inputBinding:
    prefix: --cnv-map
  type: File
- doc: Use variants reported in VCF file as input to the algorithm. Variants in this
    file will included in the output even if there is not enough support in the data
    to pass input filters.
  id: variant_input
  inputBinding:
    prefix: --variant-input
  type: string
- doc: Only provide variant calls and genotype likelihoods for sites and alleles which
    are provided in the VCF input, and provide output in the VCF for all input alleles,
    not just those which have support in the data.
  id: only_use_input_alleles
  inputBinding:
    prefix: --only-use-input-alleles
  type: boolean
- doc: When specified, only variant alleles provided in this input VCF will be used
    for the construction of complex or haplotype alleles.
  id: haplotype_basis_alleles
  inputBinding:
    prefix: --haplotype-basis-alleles
  type: string
- doc: At sites where genotypes are made over haplotype alleles, provide information
    about all alleles in output, not only those which are called.
  id: report_all_haplotype_alleles
  inputBinding:
    prefix: --report-all-haplotype-alleles
  type: boolean
- doc: Report even loci which appear to be monomorphic, and report all considered
    alleles, even those which are not in called genotypes. Loci which do not have
    any potential alternates have '.' for ALT.
  id: report_monomorphic
  inputBinding:
    prefix: --report-monomorphic
  type: boolean
- doc: 'Report sites if the probability that there is a polymorphism at the site is
    greater than N.  default: 0.0.  Note that post- filtering is generally recommended
    over the use of this parameter.'
  id: p_var
  inputBinding:
    prefix: --pvar
  type: string
- doc: Generate strict VCF format (FORMAT/GQ will be an int)
  id: strict_vcf
  inputBinding:
    prefix: --strict-vcf
  type: boolean
- doc: 'The expected mutation rate or pairwise nucleotide diversity among the population
    under analysis.  This serves as the single parameter to the Ewens Sampling Formula
    prior model default: 0.001'
  id: theta
  inputBinding:
    prefix: --theta
  type: string
- doc: 'Sets the default ploidy for the analysis to N.  default: 2'
  id: ploidy
  inputBinding:
    prefix: --ploidy
  type: string
- doc: Assume that samples result from pooled sequencing. Model pooled samples using
    discrete genotypes across pools. When using this flag, set --ploidy to the number
    of alleles in each sample or use the --cnv-map to define per-sample ploidy.
  id: pooled_discrete
  inputBinding:
    prefix: --pooled-discrete
  type: boolean
- doc: Output all alleles which pass input filters, regardles of genotyping outcome
    or model.
  id: pooled_continuous
  inputBinding:
    prefix: --pooled-continuous
  type: boolean
- doc: 'Evaluate only the best N SNP alleles, ranked by sum of supporting quality
    scores.  (Set to 0 to use all; default: all)'
  id: use_best_n_alleles
  inputBinding:
    prefix: --use-best-n-alleles
  type: string
- doc: '--haplotype-length N Allow haplotype calls with contiguous embedded matches
    of up to this length. Set N=-1 to disable clumping. (default: 3)'
  id: max_complex_gap
  inputBinding:
    prefix: --max-complex-gap
  type: string
- doc: 'When assembling observations across repeats, require the total repeat length
    at least this many bp.  (default: 5)'
  id: min_repeat_size
  inputBinding:
    prefix: --min-repeat-size
  type: string
- doc: 'To detect interrupted repeats, build across sequence until it has entropy
    > N bits per bp. Set to 0 to turn off. (default: 1)'
  id: min_repeat_entropy
  inputBinding:
    prefix: --min-repeat-entropy
  type: string
- doc: Exclude observations which do not fully span the dynamically-determined detection
    window.  (default, use all observations, dividing partial support across matching
    haplotypes when generating haplotypes.)
  id: no_partial_observations
  inputBinding:
    prefix: --no-partial-observations
  type: boolean
- doc: Remove SNP observations from input.
  id: throw_away_snp_obs
  inputBinding:
    prefix: --throw-away-snp-obs
  type: boolean
- doc: Remove indel observations from input.
  id: throw_away_indels_obs
  inputBinding:
    prefix: --throw-away-indels-obs
  type: boolean
- doc: Remove MNP observations from input.
  id: throw_away_mnp_obs
  inputBinding:
    prefix: --throw-away-mnp-obs
  type: boolean
- doc: complex allele observations from input.
  id: throw_away_complex_obs
  inputBinding:
    prefix: --throw-away-complex-obs
  type: string
- doc: Turn off left-alignment of indels, which is enabled by default.
  id: dont_left_align_indels
  inputBinding:
    prefix: --dont-left-align-indels
  type: boolean
- doc: 'Require at least this count of observations supporting an alternate allele
    within the total population in order to use the allele in analysis.  default:
    1'
  id: min_alternate_total
  inputBinding:
    prefix: --min-alternate-total
  type: string
- doc: 'Require at least this coverage to process a site. default: 0'
  id: min_coverage
  inputBinding:
    prefix: --min-coverage
  type: string
- doc: 'Downsample per-sample coverage to this level if greater than this coverage.
    default: no limit'
  id: limit_coverage
  inputBinding:
    prefix: --limit-coverage
  type: string
- doc: 'Skip processing of alignments overlapping positions with coverage >N. This
    filters sites above this coverage, but will also reduce data nearby. default:
    no limit'
  id: skip_coverage
  inputBinding:
    prefix: --skip-coverage
  type: string
- doc: Equivalent to --pooled-discrete --hwe-priors-off and removal of Ewens Sampling
    Formula component of priors.
  id: no_population_priors
  inputBinding:
    prefix: --no-population-priors
  type: boolean
- doc: Disable estimation of the probability of the combination arising under HWE
    given the allele frequency as estimated by observation frequency.
  id: h_we_priors_off
  inputBinding:
    prefix: --hwe-priors-off
  type: boolean
- doc: Disable incorporation of prior expectations about observations. Uses read placement
    probability, strand balance probability, and read position (5'-3') probability.
  id: binomial_obs_priors_off
  inputBinding:
    prefix: --binomial-obs-priors-off
  type: boolean
- doc: Disable use of aggregate probability of observation balance between alleles
    as a component of the priors.
  id: allele_balance_priors_off
  inputBinding:
    prefix: --allele-balance-priors-off
  type: boolean
- doc: Read length-dependent allele observation biases from FILE. The format is [length]
    [alignment efficiency relative to reference] where the efficiency is 1 if there
    is no relative observation bias.
  id: observation_bias
  inputBinding:
    prefix: --observation-bias
  type: File
- doc: Limit estimated observation quality by capping base quality at Q.
  id: base_quality_cap
  inputBinding:
    prefix: --base-quality-cap
  type: string
- doc: 'An estimate of contamination to use for all samples.  default: 10e-9'
  id: prob_contamination
  inputBinding:
    prefix: --prob-contamination
  type: string
- doc: Use legacy (polybayes equivalent) genotype likelihood calculations
  id: legacy_gls
  inputBinding:
    prefix: --legacy-gls
  type: boolean
- doc: "A file containing per-sample estimates of contamination, such as those generated\
    \ by VerifyBamID.  The format should be: sample p(read=R|genotype=AR) p(read=A|genotype=AA)\
    \ Sample '*' can be used to set default contamination estimates."
  id: contamination_estimates
  inputBinding:
    prefix: --contamination-estimates
  type: File
- doc: Print debugging output.
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Print more verbose debugging output (requires "make DEBUG")
  id: dd
  inputBinding:
    prefix: -dd
  type: boolean
