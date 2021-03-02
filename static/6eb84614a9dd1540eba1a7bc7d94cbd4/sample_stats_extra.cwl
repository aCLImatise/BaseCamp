class: CommandLineTool
id: sample_stats_extra.cwl
inputs:
- id: in_arg_name_output
  doc: "[ --outfile ] arg                  name of output file (default is to\nwrite\
    \ to stdout)"
  type: File?
  inputBinding:
    prefix: -o
- id: in_arg_specify_precision
  doc: '[ --precision ] arg (=8)           specify precision of output'
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_arg_part_margin
  doc: "[ --margin ] arg (=0.10000000000000001)\nignore part of simulated region within\n\
    this margin of ends of region"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_arg_restrict_chroms
  doc: '[ --chromRange ] arg               restrict chroms to this range'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_arg_compute_frequency
  doc: '[ --afs ] arg                      compute allele frequency spectrum'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_arg_compute_ld
  doc: '[ --ld ] arg                       compute LD stats for these definitions'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_ld_use_cm
  doc: use cM for LD snp distances
  type: boolean?
  inputBinding:
    prefix: --ld-use-cM
- id: in_ld_use_bp
  doc: use bp for LD snp distances
  type: boolean?
  inputBinding:
    prefix: --ld-use-bp
- id: in_ld_seps
  doc: snp count separation for LD stats
  type: string?
  inputBinding:
    prefix: --ld-seps
- id: in_arg_compute_dind
  doc: '[ --DIND ] arg                     compute DIND for this loc'
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_include_tree_stats
  doc: '[ --tree ]                         include tree stats'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_per_pop_stats
  doc: break down stats by pop
  type: boolean?
  inputBinding:
    prefix: --per-pop-stats
- id: in_print_summary_only
  doc: '[ --summary-only ]                 print summary only'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_global_afs
  doc: save global AFS to this file
  type: File?
  inputBinding:
    prefix: --global-afs
- id: in_global_ld_r_two
  doc: "save global LD histogram for r^2 to\nthis file"
  type: long?
  inputBinding:
    prefix: --global-ld-r2
- id: in_global_ld_d_prime
  doc: "save global LD histogram for Dprime to\nthis file"
  type: File?
  inputBinding:
    prefix: --global-ld-Dprime
- id: in_global_ld_dists_snp_count
  doc: "for LD computation, use SNP pairs at\nthis distance (in # of snps between\n\
    them)"
  type: string?
  inputBinding:
    prefix: --global-ld-dists-snp-count
- id: in_max_sims
  doc: (=0)                   max sims to consider
  type: long?
  inputBinding:
    prefix: --max-sims
- id: in__add_quantiles
  doc: '[ --quantiles ]                    add quantiles'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_region_len_bp
  doc: (=-1)             length of simulated region (bp)
  type: long?
  inputBinding:
    prefix: --region-len-bp
- id: in_ld_hist_max_sep_bp
  doc: (=0)         for LD histogram, max separation (bp)
  type: long?
  inputBinding:
    prefix: --ld-hist-max-sep-bp
- id: in_ld_hist_num_bins
  doc: (=0)           for LD histogram, number of bins
  type: long?
  inputBinding:
    prefix: --ld-hist-num-bins
- id: in_ld_hist_min_maf
  doc: "(=0)            for LD histogram, ignore SNPs with\nminor allele freq less\
    \ than this"
  type: long?
  inputBinding:
    prefix: --ld-hist-min-maf
- id: in_arg_print_progress
  doc: '[ --progress-every ] arg           print progress every N sims'
  type: boolean?
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_name_output
  doc: "[ --outfile ] arg                  name of output file (default is to\nwrite\
    \ to stdout)"
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_name_output)
hints: []
cwlVersion: v1.1
baseCommand:
- sample_stats_extra
