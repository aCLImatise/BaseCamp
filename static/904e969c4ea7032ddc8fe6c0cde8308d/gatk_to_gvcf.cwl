class: CommandLineTool
id: gatk_to_gvcf.cwl
inputs:
- id: all_sites
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: gvc_f
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: chrom_depth_file
  doc: 'Read mean depth for each chromosome from file,  and use these values for maximum
    site depth  filteration. File should contain one line per  chromosome, where each
    line begins with:  "chrom_name<TAB>depth" (default: no chrom depth filtration)'
  type: string
  inputBinding:
    prefix: --chrom-depth-file
- id: max_depth_factor
  doc: (=3.0) If a chrom depth file is supplied then loci  with depth exceeding the
    mean chrom depth times this value are filtered
  type: string
  inputBinding:
    prefix: --max-depth-factor
- id: min_gq_x
  doc: (=20.0)         Minimum locus GQX
  type: string
  inputBinding:
    prefix: --min-gqx
- id: min_mq
  doc: (=20.0)          Minimum site MQ
  type: string
  inputBinding:
    prefix: --min-mq
- id: min_qd
  doc: (=3.73)          Minimum locus QD
  type: string
  inputBinding:
    prefix: --min-qd
- id: max_site_fs
  doc: (=60.0)     Maximum site FS
  type: string
  inputBinding:
    prefix: --max-site-fs
- id: max_hap_score
  doc: (=13.0)    Maximum site HaplotypeScore
  type: string
  inputBinding:
    prefix: --max-hapscore
- id: min_m_qrs
  doc: (=-12.5)       Minimum site MQRankSum
  type: string
  inputBinding:
    prefix: --min-mqrs
- id: min_site_r_prs
  doc: (=-2.386) Minimum site ReadPosRankSum
  type: string
  inputBinding:
    prefix: --min-site-rprs
- id: max_in_del_fs
  doc: (=200.0)   Maximum indel FS
  type: string
  inputBinding:
    prefix: --max-indel-fs
- id: min_in_del_r_prs
  doc: (=-20.0) Minimum indel ReadPosRankSum
  type: string
  inputBinding:
    prefix: --min-indel-rprs
- id: no_default_filters
  doc: Clear all default filters. Any individual  filter threshold changes above will
    still be in effect
  type: boolean
  inputBinding:
    prefix: --no-default-filters
- id: min_block_able_non_ref
  doc: (=0.2) If AD present, only compress non-variant  site if 1-AD[0]/DP < value
  type: string
  inputBinding:
    prefix: --min-blockable-nonref
- id: skip_header
  doc: Write gVCF output without header
  type: boolean
  inputBinding:
    prefix: --skip-header
- id: block_range_factor
  doc: (=0.3)       Non-variant blocks are restricted to  range [x,y], y <= max(x+3,x*(1+block-ra
    nge-factor))
  type: string
  inputBinding:
    prefix: --block-range-factor
- id: block_label
  doc: (=BLOCKAVG_min30p3a) VCF INFO key used to annotate  compressed non-variant
    blocks
  type: string
  inputBinding:
    prefix: --block-label
- id: block_stats
  doc: Write non-variant block stats to the  file
  type: string
  inputBinding:
    prefix: --block-stats
- id: no_block_compression
  doc: Turn off block compression
  type: boolean
  inputBinding:
    prefix: --no-block-compression
outputs: []
cwlVersion: v1.1
baseCommand:
- gatk_to_gvcf
