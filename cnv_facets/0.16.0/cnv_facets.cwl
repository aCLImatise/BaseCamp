class: CommandLineTool
id: cnv_facets.R.cwl
inputs:
- id: out
  doc: Output prefix for the output files
  type: string
  inputBinding:
    prefix: --out
- id: snp_tumour
  doc: BAM file for tumour sample
  type: string
  inputBinding:
    prefix: --snp-tumour
- id: snp_normal
  doc: BAM file for normal sample
  type: string
  inputBinding:
    prefix: --snp-normal
- id: snp_vcf
  doc: VCF file of SNPs where pileup is to be computed
  type: string
  inputBinding:
    prefix: --snp-vcf
- id: snp_mapq
  doc: Sets the minimum threshold for mapping quality. Default 5
  type: string
  inputBinding:
    prefix: --snp-mapq
- id: snp_baq
  doc: Sets the minimum threshold for base quality. Default 10
  type: string
  inputBinding:
    prefix: --snp-baq
- id: snp_count_orphans
  doc: Do not discard anomalous read pairs
  type: boolean
  inputBinding:
    prefix: --snp-count-orphans
- id: snp_nprocs
  doc: Number of parallel processes to run to prepare the read pileup file. Each chromsome
    is assigned to a process. Default 1
  type: string
  inputBinding:
    prefix: --snp-nprocs
- id: pile_up
  doc: Pileup for matched normal (first sample) and tumour (second sample). Not needed
    if using BAM input. This file is the <prefix>.cvs.gz output of of a previous run
    of cnv_facet.R
  type: string
  inputBinding:
    prefix: --pileup
- id: depth
  doc: DEPTH, -d DEPTH DEPTH Minimum and maximum depth in normal sample for a position
    to be considered. Default 25 4000
  type: string
  inputBinding:
    prefix: --depth
- id: targets
  doc: BED file of target regions to scan. It may be the target regions from WEX or
    panel sequencing protocols. It is not required, even for targeted sequencing,
    but it may improve the results
  type: string
  inputBinding:
    prefix: --targets
- id: cval
  doc: CVAL, -cv CVAL CVAL Critical values for segmentation in pre-processing and
    processing. Larger values reduce segmentation. [25 150] is facets default based
    on exome data. For whole genome consider increasing to [25 400] and for targeted
    sequencing consider reducing them. Default 25 150
  type: string
  inputBinding:
    prefix: --cval
- id: n_bhd_snp
  doc: If an interval of size nbhd-snp contains more than one SNP, sample a random
    one.  This sampling reduces the SNP serial correlation. This value should be similar
    to the median insert size of the libraries. If "auto" and if using paired end
    BAM input, use the estimated insert size from the normal bam file. Otherwise use
    250. Default auto
  type: string
  inputBinding:
    prefix: --nbhd-snp
- id: annotation
  doc: Optional annotation file in BED format where the 4th column contains the feature
    name (e.g. gene name). CNVs will be annotated with an additional INFO/TAG reporting
    all the overalapping features
  type: string
  inputBinding:
    prefix: --annotation
- id: g_build
  doc: String indicating the reference genome build. Default hg38.
  type: string
  inputBinding:
    prefix: --gbuild
- id: unmatched
  doc: Normal sample is unmatched. If set, heterozygote SNPs are called using tumor
    reads only and logOR calculations are different
  type: boolean
  inputBinding:
    prefix: --unmatched
- id: no_cov_plot
  doc: Do not produce coverage plots (they can be memory intensive). Other plots remain
    unaffected
  type: boolean
  inputBinding:
    prefix: --no-cov-plot
- id: rnd_seed
  doc: 'Seed for random number generator. Default: The name of the input file'
  type: string
  inputBinding:
    prefix: --rnd-seed
outputs: []
cwlVersion: v1.1
baseCommand:
- cnv_facets.R
