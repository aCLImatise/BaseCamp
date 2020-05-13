class: CommandLineTool
id: longshot.cwl
inputs:
- id: auto_max_cov
  doc: Automatically calculate mean coverage for region and set max coverage to mean_coverage
    + 5*sqrt(mean_coverage). (SLOWER)
  type: boolean
  inputBinding:
    prefix: --auto_max_cov
- id: stable_alignment
  doc: Use numerically-stable (logspace) pair HMM forward algorithm. Is significantly
    slower but may be more accurate. Tests have shown this not to be necessary for
    highly error prone reads (PacBio CLR).
  type: boolean
  inputBinding:
    prefix: --stable_alignment
- id: force_overwrite
  doc: If output files (VCF or variant debug directory) exist, delete and overwrite
    them.
  type: boolean
  inputBinding:
    prefix: --force_overwrite
- id: max_alignment
  doc: Use max scoring alignment algorithm rather than pair HMM forward algorithm.
  type: boolean
  inputBinding:
    prefix: --max_alignment
- id: no_haps
  doc: Don't call HapCUT2 to phase variants.
  type: boolean
  inputBinding:
    prefix: --no_haps
- id: bam
  doc: sorted, indexed BAM file with error-prone reads
  type: string
  inputBinding:
    prefix: --bam
- id: ref
  doc: indexed FASTA reference that BAM file is aligned to
  type: string
  inputBinding:
    prefix: --ref
- id: out
  doc: output VCF file with called variants.
  type: string
  inputBinding:
    prefix: --out
- id: region
  doc: Region in format <chrom> or <chrom:start-stop> in which to call variants (1-based,
    inclusive).
  type: string
  inputBinding:
    prefix: --region
- id: potential_variants
  doc: 'Genotype and phase the variants in this VCF instead of using pileup method
    to find variants. NOTES: VCF must be gzipped and tabix indexed or contain contig
    information. Use with caution because excessive false potential variants can lead
    to inaccurate results. Every variant is used and only the allele fields are considered
    -- Genotypes, filters, qualities etc are ignored. Indel variants will be genotyped
    but not phased. Triallelic variants and structural variants are currently not
    supported.'
  type: string
  inputBinding:
    prefix: --potential_variants
- id: out_bam
  doc: Write new bam file with haplotype tags (HP:i:1 and HP:i:2) for reads assigned
    to each haplotype, any existing HP and PS tags are removed
  type: string
  inputBinding:
    prefix: --out_bam
- id: min_cov
  doc: 'Minimum coverage (of reads passing filters) to consider position as a potential
    SNV. [default: 6]'
  type: long
  inputBinding:
    prefix: --min_cov
- id: max_cov
  doc: 'Maximum coverage (of reads passing filters) to consider position as a potential
    SNV. [default: 8000]'
  type: long
  inputBinding:
    prefix: --max_cov
- id: min_mapq
  doc: 'Minimum mapping quality to use a read. [default: 30]'
  type: long
  inputBinding:
    prefix: --min_mapq
- id: min_allele_qual
  doc: 'Minimum estimated quality (Phred-scaled) of allele observation on read to
    use for genotyping/haplotyping. [default: 7.0]'
  type: double
  inputBinding:
    prefix: --min_allele_qual
- id: hap_assignment_qual
  doc: 'Minimum quality (Phred-scaled) of read->haplotype assignment (for read separation).
    [default: 20.0]'
  type: double
  inputBinding:
    prefix: --hap_assignment_qual
- id: potential_snv_cut_off
  doc: 'Consider a site as a potential SNV if the original PHRED-scaled QUAL score
    for 0/0 genotype is below this amount (a larger value considers more potential
    SNV sites). [default: 20.0]'
  type: double
  inputBinding:
    prefix: --potential_snv_cutoff
- id: min_alt_count
  doc: 'Require a potential SNV to have at least this many alternate allele observations.
    [default: 3]'
  type: long
  inputBinding:
    prefix: --min_alt_count
- id: min_alt_frac
  doc: 'Require a potential SNV to have at least this fraction of alternate allele
    observations. [default: 0.125]'
  type: double
  inputBinding:
    prefix: --min_alt_frac
- id: hap_converge_delta
  doc: 'Terminate the haplotype/genotype iteration when the relative change in log-likelihood
    falls below this amount. Setting a larger value results in faster termination
    but potentially less accurate results. [default: 0.0001]'
  type: double
  inputBinding:
    prefix: --hap_converge_delta
- id: anchor_length
  doc: 'Length of indel-free anchor sequence on the left and right side of read realignment
    window. [default: 6]'
  type: long
  inputBinding:
    prefix: --anchor_length
- id: max_sn_vs
  doc: 'Cut off variant clusters after this many variants. 2^m haplotypes must be
    aligned against per read for a variant cluster of size m. [default: 3]'
  type: long
  inputBinding:
    prefix: --max_snvs
- id: max_window
  doc: 'Maximum "padding" bases on either side of variant realignment window [default:
    50]'
  type: long
  inputBinding:
    prefix: --max_window
- id: max_cigar_in_del
  doc: 'Throw away a read-variant during allelotyping if there is a CIGAR indel (I/D/N)
    longer than this amount in its window. [default: 20]'
  type: long
  inputBinding:
    prefix: --max_cigar_indel
- id: band_width
  doc: 'Minimum width of alignment band. Band will increase in size if sequences are
    different lengths. [default: 20]'
  type: string
  inputBinding:
    prefix: --band_width
- id: density_params
  doc: 'Parameters to flag a variant as part of a "dense cluster". Format <n>:<l>:<gq>.
    If there are at least n variants within l base pairs with genotype quality >=gq,
    then these variants are flagged as "dn" [default: 10:500:50]'
  type: string
  inputBinding:
    prefix: --density_params
- id: sample_id
  doc: 'Specify a sample ID to write to the output VCF [default: SAMPLE]'
  type: string
  inputBinding:
    prefix: --sample_id
- id: hom_snv_rate
  doc: 'Specify the homozygous SNV Rate for genotype prior estimation [default: 0.0005]'
  type: double
  inputBinding:
    prefix: --hom_snv_rate
- id: het_snv_rate
  doc: 'Specify the heterozygous SNV Rate for genotype prior estimation [default:
    0.001]'
  type: double
  inputBinding:
    prefix: --het_snv_rate
- id: ts_tv_ratio
  doc: 'Specify the transition/transversion rate for genotype grior estimation [default:
    0.5]'
  type: double
  inputBinding:
    prefix: --ts_tv_ratio
- id: strand_bias_p_value_cut_off
  doc: "Remove a variant if the allele observations are biased toward one strand (forward\
    \ or reverse) according to Fisher's exact test. Use this cutoff for the two-tailed\
    \ P-value. [default: 0.01]"
  type: double
  inputBinding:
    prefix: --strand_bias_pvalue_cutoff
- id: variant_debug_dir
  doc: write out current information about variants at each step of algorithm to files
    in this directory
  type: File
  inputBinding:
    prefix: --variant_debug_dir
outputs: []
cwlVersion: v1.1
baseCommand:
- longshot
