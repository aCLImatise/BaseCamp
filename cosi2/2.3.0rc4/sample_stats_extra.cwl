class: CommandLineTool
id: sample_stats_extra.cwl
inputs:
- id: o
  doc: '[ --outfile ] arg                  name of output file (default is to  write
    to stdout)'
  type: boolean
  inputBinding:
    prefix: -o
- id: p
  doc: '[ --precision ] arg (=8)           specify precision of output'
  type: boolean
  inputBinding:
    prefix: -p
- id: m
  doc: '[ --margin ] arg (=0.10000000000000001) ignore part of simulated region within  this
    margin of ends of region'
  type: boolean
  inputBinding:
    prefix: -m
- id: c
  doc: '[ --chromRange ] arg               restrict chroms to this range'
  type: boolean
  inputBinding:
    prefix: -c
- id: a
  doc: '[ --afs ] arg                      compute allele frequency spectrum'
  type: boolean
  inputBinding:
    prefix: -a
- id: l
  doc: '[ --ld ] arg                       compute LD stats for these definitions'
  type: boolean
  inputBinding:
    prefix: -l
- id: ld_use_cm
  doc: use cM for LD snp distances
  type: boolean
  inputBinding:
    prefix: --ld-use-cM
- id: ld_use_bp
  doc: use bp for LD snp distances
  type: boolean
  inputBinding:
    prefix: --ld-use-bp
- id: ld_seps
  doc: snp count separation for LD stats
  type: string
  inputBinding:
    prefix: --ld-seps
- id: d
  doc: '[ --DIND ] arg                     compute DIND for this loc'
  type: boolean
  inputBinding:
    prefix: -D
- id: t
  doc: '[ --tree ]                         include tree stats'
  type: boolean
  inputBinding:
    prefix: -t
- id: per_pop_stats
  doc: break down stats by pop
  type: boolean
  inputBinding:
    prefix: --per-pop-stats
- id: s
  doc: '[ --summary-only ]                 print summary only'
  type: boolean
  inputBinding:
    prefix: -s
- id: global_afs
  doc: save global AFS to this file
  type: string
  inputBinding:
    prefix: --global-afs
- id: global_ld_r2
  doc: save global LD histogram for r^2 to  this file
  type: string
  inputBinding:
    prefix: --global-ld-r2
- id: global_ld_d_prime
  doc: save global LD histogram for Dprime to  this file
  type: string
  inputBinding:
    prefix: --global-ld-Dprime
- id: global_ld_dists_snp_count
  doc: 'for LD computation, use SNP pairs at  this distance (in # of snps between  them)'
  type: string
  inputBinding:
    prefix: --global-ld-dists-snp-count
- id: max_sims
  doc: (=0)                   max sims to consider
  type: string
  inputBinding:
    prefix: --max-sims
- id: q
  doc: '[ --quantiles ]                    add quantiles'
  type: boolean
  inputBinding:
    prefix: -q
- id: region_len_bp
  doc: (=-1)             length of simulated region (bp)
  type: string
  inputBinding:
    prefix: --region-len-bp
- id: ld_hist_max_sep_bp
  doc: (=0)         for LD histogram, max separation (bp)
  type: string
  inputBinding:
    prefix: --ld-hist-max-sep-bp
- id: ld_hist_num_bins
  doc: (=0)           for LD histogram, number of bins
  type: string
  inputBinding:
    prefix: --ld-hist-num-bins
- id: ld_hist_min_maf
  doc: (=0)            for LD histogram, ignore SNPs with  minor allele freq less
    than this
  type: string
  inputBinding:
    prefix: --ld-hist-min-maf
- id: g
  doc: '[ --progress-every ] arg           print progress every N sims'
  type: boolean
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- sample_stats_extra
