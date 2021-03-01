class: CommandLineTool
id: cnv_facets.R.cwl
inputs:
- id: in_out
  doc: Output prefix for the output files
  type: string?
  inputBinding:
    prefix: --out
- id: in_snp_tumour
  doc: BAM file for tumour sample
  type: File?
  inputBinding:
    prefix: --snp-tumour
- id: in_snp_normal
  doc: BAM file for normal sample
  type: File?
  inputBinding:
    prefix: --snp-normal
- id: in_snp_vcf
  doc: VCF file of SNPs where pileup is to be computed
  type: File?
  inputBinding:
    prefix: --snp-vcf
- id: in_snp_mapq
  doc: Sets the minimum threshold for mapping quality. Default 5
  type: long?
  inputBinding:
    prefix: --snp-mapq
- id: in_snp_baq
  doc: Sets the minimum threshold for base quality. Default 10
  type: long?
  inputBinding:
    prefix: --snp-baq
- id: in_snp_count_orphans
  doc: Do not discard anomalous read pairs
  type: boolean?
  inputBinding:
    prefix: --snp-count-orphans
- id: in_snp_nprocs
  doc: "Number of parallel processes to run to prepare the read pileup file.\nEach\
    \ chromsome is assigned to a process. Default 1"
  type: long?
  inputBinding:
    prefix: --snp-nprocs
- id: in_pile_up
  doc: "Pileup for matched normal (first sample) and tumour\n(second sample). Not\
    \ needed if using BAM input. This file\nis the <prefix>.cvs.gz output of of a\
    \ previous run of cnv_facet.R"
  type: File?
  inputBinding:
    prefix: --pileup
- id: in_depth
  doc: "DEPTH, -d DEPTH DEPTH\nMinimum and maximum depth in normal sample for a position\n\
    to be considered. Default 25 4000"
  type: long?
  inputBinding:
    prefix: --depth
- id: in_targets
  doc: "BED file of target regions to scan. It may be the target regions\nfrom WEX\
    \ or panel sequencing protocols. It is not required, even\nfor targeted sequencing,\
    \ but it may improve the results"
  type: File?
  inputBinding:
    prefix: --targets
- id: in_cval
  doc: "CVAL, -cv CVAL CVAL\nCritical values for segmentation in pre-processing and\n\
    processing. Larger values reduce segmentation. [25 150] is\nfacets default based\
    \ on exome data. For whole genome consider\nincreasing to [25 400] and for targeted\
    \ sequencing consider\nreducing them. Default 25 150"
  type: long?
  inputBinding:
    prefix: --cval
- id: in_n_bhd_snp
  doc: "If an interval of size nbhd-snp contains more than one SNP,\nsample a random\
    \ one.  This sampling reduces the SNP serial\ncorrelation. This value should be\
    \ similar to the median insert\nsize of the libraries. If \"auto\" and if using\
    \ paired end BAM\ninput, use the estimated insert size from the normal bam file.\n\
    Otherwise use 250. Default auto"
  type: long?
  inputBinding:
    prefix: --nbhd-snp
- id: in_annotation
  doc: "Optional annotation file in BED format where the 4th column\ncontains the\
    \ feature name (e.g. gene name). CNVs will be\nannotated with an additional INFO/TAG\
    \ reporting all the\noveralapping features"
  type: File?
  inputBinding:
    prefix: --annotation
- id: in_g_build
  doc: String indicating the reference genome build. Default hg38.
  type: string?
  inputBinding:
    prefix: --gbuild
- id: in_unmatched
  doc: "Normal sample is unmatched. If set, heterozygote SNPs are\ncalled using tumor\
    \ reads only and logOR calculations are different"
  type: boolean?
  inputBinding:
    prefix: --unmatched
- id: in_no_cov_plot
  doc: "Do not produce coverage plots (they can be memory intensive).\nOther plots\
    \ remain unaffected"
  type: boolean?
  inputBinding:
    prefix: --no-cov-plot
- id: in_rnd_seed
  doc: 'Seed for random number generator. Default: The name of the input file'
  type: long?
  inputBinding:
    prefix: --rnd-seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cnv_facets.R
