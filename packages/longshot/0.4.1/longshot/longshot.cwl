class: CommandLineTool
id: ../../../longshot.cwl
inputs:
- id: in_auto_max_cov
  doc: "Automatically calculate mean coverage for region and set max coverage to mean_coverage\
    \ +\n5*sqrt(mean_coverage). (SLOWER)"
  type: boolean
  inputBinding:
    prefix: --auto_max_cov
- id: in_stable_alignment
  doc: "Use numerically-stable (logspace) pair HMM forward algorithm. Is significantly\
    \ slower but\nmay be more accurate. Tests have shown this not to be necessary\
    \ for highly error prone\nreads (PacBio CLR)."
  type: boolean
  inputBinding:
    prefix: --stable_alignment
- id: in_force_overwrite
  doc: If output files (VCF or variant debug directory) exist, delete and overwrite
    them.
  type: Directory
  inputBinding:
    prefix: --force_overwrite
- id: in_max_alignment
  doc: Use max scoring alignment algorithm rather than pair HMM forward algorithm.
  type: boolean
  inputBinding:
    prefix: --max_alignment
- id: in_no_haps
  doc: Don't call HapCUT2 to phase variants.
  type: boolean
  inputBinding:
    prefix: --no_haps
- id: in_bam
  doc: sorted, indexed BAM file with error-prone reads
  type: File
  inputBinding:
    prefix: --bam
- id: in_ref
  doc: indexed FASTA reference that BAM file is aligned to
  type: File
  inputBinding:
    prefix: --ref
- id: in_out
  doc: output VCF file with called variants.
  type: File
  inputBinding:
    prefix: --out
- id: in_region
  doc: "Region in format <chrom> or <chrom:start-stop> in which to call variants\n\
    (1-based, inclusive)."
  type: long
  inputBinding:
    prefix: --region
- id: in_potential_variants
  doc: "Genotype and phase the variants in this VCF instead of using pileup\nmethod\
    \ to find variants. NOTES: VCF must be gzipped and tabix indexed or\ncontain contig\
    \ information. Use with caution because excessive false\npotential variants can\
    \ lead to inaccurate results. Every variant is used\nand only the allele fields\
    \ are considered -- Genotypes, filters,\nqualities etc are ignored. Indel variants\
    \ will be genotyped but not\nphased. Triallelic variants and structural variants\
    \ are currently not\nsupported."
  type: string
  inputBinding:
    prefix: --potential_variants
- id: in_out_bam
  doc: "Write new bam file with haplotype tags (HP:i:1 and HP:i:2) for reads\nassigned\
    \ to each haplotype, any existing HP and PS tags are removed"
  type: File
  inputBinding:
    prefix: --out_bam
- id: in_min_cov
  doc: "Minimum coverage (of reads passing filters) to consider position as a\npotential\
    \ SNV. [default: 6]"
  type: long
  inputBinding:
    prefix: --min_cov
- id: in_max_cov
  doc: "Maximum coverage (of reads passing filters) to consider position as a\npotential\
    \ SNV. [default: 8000]"
  type: long
  inputBinding:
    prefix: --max_cov
- id: in_min_mapq
  doc: 'Minimum mapping quality to use a read. [default: 30]'
  type: long
  inputBinding:
    prefix: --min_mapq
- id: in_min_allele_qual
  doc: "Minimum estimated quality (Phred-scaled) of allele observation on read to\n\
    use for genotyping/haplotyping. [default: 7.0]"
  type: double
  inputBinding:
    prefix: --min_allele_qual
- id: in_hap_assignment_qual
  doc: "Minimum quality (Phred-scaled) of read->haplotype assignment (for read\nseparation).\
    \ [default: 20.0]"
  type: double
  inputBinding:
    prefix: --hap_assignment_qual
- id: in_potential_snv_cut_off
  doc: "Consider a site as a potential SNV if the original PHRED-scaled QUAL\nscore\
    \ for 0/0 genotype is below this amount (a larger value considers\nmore potential\
    \ SNV sites). [default: 20.0]"
  type: double
  inputBinding:
    prefix: --potential_snv_cutoff
- id: in_min_alt_count
  doc: "Require a potential SNV to have at least this many alternate allele\nobservations.\
    \ [default: 3]"
  type: long
  inputBinding:
    prefix: --min_alt_count
- id: in_min_alt_frac
  doc: "Require a potential SNV to have at least this fraction of alternate\nallele\
    \ observations. [default: 0.125]"
  type: double
  inputBinding:
    prefix: --min_alt_frac
- id: in_hap_converge_delta
  doc: "Terminate the haplotype/genotype iteration when the relative change in\nlog-likelihood\
    \ falls below this amount. Setting a larger value results in\nfaster termination\
    \ but potentially less accurate results. [default:\n0.0001]"
  type: double
  inputBinding:
    prefix: --hap_converge_delta
- id: in_anchor_length
  doc: "Length of indel-free anchor sequence on the left and right side of read\n\
    realignment window. [default: 6]"
  type: long
  inputBinding:
    prefix: --anchor_length
- id: in_max_sn_vs
  doc: "Cut off variant clusters after this many variants. 2^m haplotypes must be\n\
    aligned against per read for a variant cluster of size m. [default: 3]"
  type: long
  inputBinding:
    prefix: --max_snvs
- id: in_max_window
  doc: "Maximum \"padding\" bases on either side of variant realignment window\n[default:\
    \ 50]"
  type: long
  inputBinding:
    prefix: --max_window
- id: in_max_cigar_in_del
  doc: "Throw away a read-variant during allelotyping if there is a CIGAR indel\n\
    (I/D/N) longer than this amount in its window. [default: 20]"
  type: long
  inputBinding:
    prefix: --max_cigar_indel
- id: in_band_width
  doc: "Minimum width of alignment band. Band will increase in size if sequences\n\
    are different lengths. [default: 20]"
  type: long
  inputBinding:
    prefix: --band_width
- id: in_density_params
  doc: "Parameters to flag a variant as part of a \"dense cluster\". Format\n<n>:<l>:<gq>.\
    \ If there are at least n variants within l base pairs with\ngenotype quality\
    \ >=gq, then these variants are flagged as \"dn\" [default:\n10:500:50]"
  type: long
  inputBinding:
    prefix: --density_params
- id: in_sample_id
  doc: 'Specify a sample ID to write to the output VCF [default: SAMPLE]'
  type: string
  inputBinding:
    prefix: --sample_id
- id: in_hom_snv_rate
  doc: "Specify the homozygous SNV Rate for genotype prior estimation [default:\n\
    0.0005]"
  type: double
  inputBinding:
    prefix: --hom_snv_rate
- id: in_het_snv_rate
  doc: "Specify the heterozygous SNV Rate for genotype prior estimation [default:\n\
    0.001]"
  type: double
  inputBinding:
    prefix: --het_snv_rate
- id: in_ts_tv_ratio
  doc: "Specify the transition/transversion rate for genotype grior estimation\n[default:\
    \ 0.5]"
  type: double
  inputBinding:
    prefix: --ts_tv_ratio
- id: in_strand_bias_p_value_cut_off
  doc: "Remove a variant if the allele observations are biased toward one strand\n\
    (forward or reverse) according to Fisher's exact test. Use this cutoff\nfor the\
    \ two-tailed P-value. [default: 0.01]"
  type: double
  inputBinding:
    prefix: --strand_bias_pvalue_cutoff
- id: in_variant_debug_dir
  doc: "write out current information about variants at each step of algorithm to\n\
    files in this directory\n"
  type: Directory
  inputBinding:
    prefix: --variant_debug_dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite
  doc: If output files (VCF or variant debug directory) exist, delete and overwrite
    them.
  type: Directory
  outputBinding:
    glob: $(inputs.in_force_overwrite)
- id: out_out
  doc: output VCF file with called variants.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_variant_debug_dir
  doc: "write out current information about variants at each step of algorithm to\n\
    files in this directory\n"
  type: Directory
  outputBinding:
    glob: $(inputs.in_variant_debug_dir)
cwlVersion: v1.1
baseCommand:
- longshot
