class: CommandLineTool
id: gatk_to_gvcf.cwl
inputs:
- id: in_chrom_depth_file
  doc: "Read mean depth for each chromosome from file,\nand use these values for maximum\
    \ site depth\nfilteration. File should contain one line per\nchromosome, where\
    \ each line begins with:\n\"chrom_name<TAB>depth\" (default: no chrom depth\n\
    filtration)"
  type: File?
  inputBinding:
    prefix: --chrom-depth-file
- id: in_max_depth_factor
  doc: "(=3.0) If a chrom depth file is supplied then loci\nwith depth exceeding the\
    \ mean chrom depth times\nthis value are filtered"
  type: long?
  inputBinding:
    prefix: --max-depth-factor
- id: in_min_gq_x
  doc: (=20.0)         Minimum locus GQX
  type: long?
  inputBinding:
    prefix: --min-gqx
- id: in_min_mq
  doc: (=20.0)          Minimum site MQ
  type: long?
  inputBinding:
    prefix: --min-mq
- id: in_min_qd
  doc: (=3.73)          Minimum locus QD
  type: long?
  inputBinding:
    prefix: --min-qd
- id: in_max_site_fs
  doc: (=60.0)     Maximum site FS
  type: long?
  inputBinding:
    prefix: --max-site-fs
- id: in_max_hap_score
  doc: (=13.0)    Maximum site HaplotypeScore
  type: long?
  inputBinding:
    prefix: --max-hapscore
- id: in_min_m_qrs
  doc: (=-12.5)       Minimum site MQRankSum
  type: long?
  inputBinding:
    prefix: --min-mqrs
- id: in_min_site_r_prs
  doc: (=-2.386) Minimum site ReadPosRankSum
  type: long?
  inputBinding:
    prefix: --min-site-rprs
- id: in_max_in_del_fs
  doc: (=200.0)   Maximum indel FS
  type: long?
  inputBinding:
    prefix: --max-indel-fs
- id: in_min_in_del_r_prs
  doc: (=-20.0) Minimum indel ReadPosRankSum
  type: long?
  inputBinding:
    prefix: --min-indel-rprs
- id: in_no_default_filters
  doc: "Clear all default filters. Any individual\nfilter threshold changes above\
    \ will still be in\neffect"
  type: boolean?
  inputBinding:
    prefix: --no-default-filters
- id: in_min_block_able_non_ref
  doc: "(=0.2) If AD present, only compress non-variant\nsite if 1-AD[0]/DP < value"
  type: long?
  inputBinding:
    prefix: --min-blockable-nonref
- id: in_skip_header
  doc: Write gVCF output without header
  type: boolean?
  inputBinding:
    prefix: --skip-header
- id: in_block_range_factor
  doc: "(=0.3)       Non-variant blocks are restricted to\nrange [x,y], y <= max(x+3,x*(1+block-ra\n\
    nge-factor))"
  type: long?
  inputBinding:
    prefix: --block-range-factor
- id: in_block_label
  doc: "(=BLOCKAVG_min30p3a)\nVCF INFO key used to annotate\ncompressed non-variant\
    \ blocks"
  type: long?
  inputBinding:
    prefix: --block-label
- id: in_block_stats
  doc: Write non-variant block stats to the
  type: string?
  inputBinding:
    prefix: --block-stats
- id: in_file
  doc: --no-block-compression                Turn off block compression
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- gatk_to_gvcf
