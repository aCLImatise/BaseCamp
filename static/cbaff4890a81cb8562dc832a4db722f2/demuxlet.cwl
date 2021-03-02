class: CommandLineTool
id: demuxlet.cwl
inputs:
- id: in_sam
  doc: '[STR: ]             : Input SAM/BAM/CRAM file. Must be sorted by coordinates
    and indexed'
  type: boolean?
  inputBinding:
    prefix: --sam
- id: in_tag_group
  doc: '[STR: CB]           : Tag representing readgroup or cell barcodes, in the
    case to partition the BAM file into multiple groups. For 10x genomics, use CB'
  type: boolean?
  inputBinding:
    prefix: --tag-group
- id: in_tag_umi
  doc: '[STR: UB]           : Tag representing UMIs. For 10x genomiucs, use UB'
  type: boolean?
  inputBinding:
    prefix: --tag-UMI
- id: in_vcf
  doc: '[STR: ]             : Input VCF/BCF file, containing the individual genotypes
    (GT), posterior probability (GP), or genotype likelihood (PL)'
  type: boolean?
  inputBinding:
    prefix: --vcf
- id: in_field
  doc: '[STR: GP]           : FORMAT field to extract the genotype, likelihood, or
    posterior from'
  type: boolean?
  inputBinding:
    prefix: --field
- id: in_geno_error
  doc: '[FLT: 0.01]         : Genotype error rate (must be used with --field GT)'
  type: boolean?
  inputBinding:
    prefix: --geno-error
- id: in_min_mac
  doc: '[INT: 1]            : Minimum minor allele frequency'
  type: boolean?
  inputBinding:
    prefix: --min-mac
- id: in_min_call_rate
  doc: '[FLT: 0.50]         : Minimum call rate'
  type: boolean?
  inputBinding:
    prefix: --min-callrate
- id: in_sm
  doc: '[V_STR: ]           : List of sample IDs to compare to (default: use all)'
  type: boolean?
  inputBinding:
    prefix: --sm
- id: in_sm_list
  doc: '[STR: ]             : File containing the list of sample IDs to compare'
  type: boolean?
  inputBinding:
    prefix: --sm-list
- id: in_out
  doc: '[STR: ]             : Output file prefix'
  type: File?
  inputBinding:
    prefix: --out
- id: in_alpha
  doc: '[V_FLT: ]           : Grid of alpha to search for (default is 0, 0.5)'
  type: boolean?
  inputBinding:
    prefix: --alpha
- id: in_write_pair
  doc: '[FLG: OFF]          : Writing the (HUGE) pair file'
  type: boolean?
  inputBinding:
    prefix: --write-pair
- id: in_doublet_prior
  doc: '[FLT: 0.50]         : Prior of doublet'
  type: boolean?
  inputBinding:
    prefix: --doublet-prior
- id: in_sam_verbose
  doc: '[INT: 1000000]      : Verbose message frequency for SAM/BAM/CRAM'
  type: boolean?
  inputBinding:
    prefix: --sam-verbose
- id: in_vcf_verbose
  doc: '[INT: 10000]        : Verbose message frequency for VCF/BCF'
  type: boolean?
  inputBinding:
    prefix: --vcf-verbose
- id: in_cap_bq
  doc: '[INT: 40]           : Maximum base quality (higher BQ will be capped)'
  type: boolean?
  inputBinding:
    prefix: --cap-BQ
- id: in_min_bq
  doc: '[INT: 13]           : Minimum base quality to consider (lower BQ will be skipped)'
  type: boolean?
  inputBinding:
    prefix: --min-BQ
- id: in_min_mq
  doc: '[INT: 20]           : Minimum mapping quality to consider (lower MQ will be
    ignored)'
  type: boolean?
  inputBinding:
    prefix: --min-MQ
- id: in_min_td
  doc: '[INT: 0]            : Minimum distance to the tail (lower will be ignored)'
  type: boolean?
  inputBinding:
    prefix: --min-TD
- id: in_excl_flag
  doc: '[INT: 3844]         : SAM/BAM FLAGs to be excluded'
  type: boolean?
  inputBinding:
    prefix: --excl-flag
- id: in_group_list
  doc: '[STR: ]             : List of tag readgroup/cell barcode to consider in this
    run. All other barcodes will be ignored. This is useful for parallelized run'
  type: boolean?
  inputBinding:
    prefix: --group-list
- id: in_min_total
  doc: '[INT: 0]            : Minimum number of total reads for a droplet/cell to
    be considered'
  type: boolean?
  inputBinding:
    prefix: --min-total
- id: in_min_uniq
  doc: '[INT: 0]            : Minimum number of unique reads (determined by UMI/SNP
    pair) for a droplet/cell to be considered'
  type: boolean?
  inputBinding:
    prefix: --min-uniq
- id: in_min_snp
  doc: '[INT: 0]            : Minimum number of SNPs with coverage for a droplet/cell
    to be considered'
  type: boolean?
  inputBinding:
    prefix: --min-snp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: '[STR: ]             : Output file prefix'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- demuxlet
