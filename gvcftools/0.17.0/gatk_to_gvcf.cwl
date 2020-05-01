#!/usr/bin/env cwl-runner

baseCommand:
- gatk_to_gvcf
class: CommandLineTool
cwlVersion: v1.0
id: gatk_to_gvcf
inputs:
- doc: ''
  id: all_sites
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: gvc_f
  inputBinding:
    position: 1
  type: string
- doc: 'Read mean depth for each chromosome from file,  and use these values for maximum
    site depth  filteration. File should contain one line per  chromosome, where each
    line begins with:  "chrom_name<TAB>depth" (default: no chrom depth filtration)'
  id: chrom_depth_file
  inputBinding:
    prefix: --chrom-depth-file
  type: string
- doc: (=3.0) If a chrom depth file is supplied then loci  with depth exceeding the
    mean chrom depth times this value are filtered
  id: max_depth_factor
  inputBinding:
    prefix: --max-depth-factor
  type: string
- doc: (=20.0)         Minimum locus GQX
  id: min_gq_x
  inputBinding:
    prefix: --min-gqx
  type: string
- doc: (=20.0)          Minimum site MQ
  id: min_mq
  inputBinding:
    prefix: --min-mq
  type: string
- doc: (=3.73)          Minimum locus QD
  id: min_qd
  inputBinding:
    prefix: --min-qd
  type: string
- doc: (=60.0)     Maximum site FS
  id: max_site_fs
  inputBinding:
    prefix: --max-site-fs
  type: string
- doc: (=13.0)    Maximum site HaplotypeScore
  id: max_hap_score
  inputBinding:
    prefix: --max-hapscore
  type: string
- doc: (=-12.5)       Minimum site MQRankSum
  id: min_m_qrs
  inputBinding:
    prefix: --min-mqrs
  type: string
- doc: (=-2.386) Minimum site ReadPosRankSum
  id: min_site_r_prs
  inputBinding:
    prefix: --min-site-rprs
  type: string
- doc: (=200.0)   Maximum indel FS
  id: max_in_del_fs
  inputBinding:
    prefix: --max-indel-fs
  type: string
- doc: (=-20.0) Minimum indel ReadPosRankSum
  id: min_in_del_r_prs
  inputBinding:
    prefix: --min-indel-rprs
  type: string
- doc: Clear all default filters. Any individual  filter threshold changes above will
    still be in effect
  id: no_default_filters
  inputBinding:
    prefix: --no-default-filters
  type: boolean
- doc: (=0.2) If AD present, only compress non-variant  site if 1-AD[0]/DP < value
  id: min_block_able_non_ref
  inputBinding:
    prefix: --min-blockable-nonref
  type: string
- doc: Write gVCF output without header
  id: skip_header
  inputBinding:
    prefix: --skip-header
  type: boolean
- doc: (=0.3)       Non-variant blocks are restricted to  range [x,y], y <= max(x+3,x*(1+block-ra
    nge-factor))
  id: block_range_factor
  inputBinding:
    prefix: --block-range-factor
  type: string
- doc: (=BLOCKAVG_min30p3a) VCF INFO key used to annotate  compressed non-variant
    blocks
  id: block_label
  inputBinding:
    prefix: --block-label
  type: string
- doc: Write non-variant block stats to the  file
  id: block_stats
  inputBinding:
    prefix: --block-stats
  type: string
- doc: Turn off block compression
  id: no_block_compression
  inputBinding:
    prefix: --no-block-compression
  type: boolean
