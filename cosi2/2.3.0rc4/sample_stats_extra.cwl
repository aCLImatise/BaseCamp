#!/usr/bin/env cwl-runner

baseCommand:
- sample_stats_extra
class: CommandLineTool
cwlVersion: v1.0
id: sample_stats_extra
inputs:
- doc: '[ --outfile ] arg                  name of output file (default is to  write
    to stdout)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: '[ --precision ] arg (=8)           specify precision of output'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --margin ] arg (=0.10000000000000001) ignore part of simulated region within  this
    margin of ends of region'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '[ --chromRange ] arg               restrict chroms to this range'
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: '[ --afs ] arg                      compute allele frequency spectrum'
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: '[ --ld ] arg                       compute LD stats for these definitions'
  id: l
  inputBinding:
    prefix: -l
  type: boolean
- doc: use cM for LD snp distances
  id: ld_use_cm
  inputBinding:
    prefix: --ld-use-cM
  type: boolean
- doc: use bp for LD snp distances
  id: ld_use_bp
  inputBinding:
    prefix: --ld-use-bp
  type: boolean
- doc: snp count separation for LD stats
  id: ld_seps
  inputBinding:
    prefix: --ld-seps
  type: string
- doc: '[ --DIND ] arg                     compute DIND for this loc'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: '[ --tree ]                         include tree stats'
  id: t
  inputBinding:
    prefix: -t
  type: boolean
- doc: break down stats by pop
  id: per_pop_stats
  inputBinding:
    prefix: --per-pop-stats
  type: boolean
- doc: '[ --summary-only ]                 print summary only'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: save global AFS to this file
  id: global_afs
  inputBinding:
    prefix: --global-afs
  type: string
- doc: save global LD histogram for r^2 to  this file
  id: global_ld_r2
  inputBinding:
    prefix: --global-ld-r2
  type: string
- doc: save global LD histogram for Dprime to  this file
  id: global_ld_d_prime
  inputBinding:
    prefix: --global-ld-Dprime
  type: string
- doc: 'for LD computation, use SNP pairs at  this distance (in # of snps between  them)'
  id: global_ld_dists_snp_count
  inputBinding:
    prefix: --global-ld-dists-snp-count
  type: string
- doc: (=0)                   max sims to consider
  id: max_sims
  inputBinding:
    prefix: --max-sims
  type: string
- doc: '[ --quantiles ]                    add quantiles'
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: (=-1)             length of simulated region (bp)
  id: region_len_bp
  inputBinding:
    prefix: --region-len-bp
  type: string
- doc: (=0)         for LD histogram, max separation (bp)
  id: ld_hist_max_sep_bp
  inputBinding:
    prefix: --ld-hist-max-sep-bp
  type: string
- doc: (=0)           for LD histogram, number of bins
  id: ld_hist_num_bins
  inputBinding:
    prefix: --ld-hist-num-bins
  type: string
- doc: (=0)            for LD histogram, ignore SNPs with  minor allele freq less
    than this
  id: ld_hist_min_maf
  inputBinding:
    prefix: --ld-hist-min-maf
  type: string
- doc: '[ --progress-every ] arg           print progress every N sims'
  id: g
  inputBinding:
    prefix: -g
  type: boolean
