class: CommandLineTool
id: varscan_fpfilter.cwl
inputs:
- id: min_var_count
  doc: Minimum number of variant-supporting reads [4]
  type: boolean
  inputBinding:
    prefix: --min-var-count
- id: min_var_count_lc
  doc: Minimum number of variant-supporting reads when depth below somaticPdepth [2]
  type: boolean
  inputBinding:
    prefix: --min-var-count-lc
- id: min_var_freq
  doc: Minimum variant allele frequency [0.05]
  type: boolean
  inputBinding:
    prefix: --min-var-freq
- id: max_somatic_p
  doc: Maximum somatic p-value [1.0]
  type: boolean
  inputBinding:
    prefix: --max-somatic-p
- id: max_somatic_p_depth
  doc: Depth required to test max somatic p-value [10]
  type: boolean
  inputBinding:
    prefix: --max-somatic-p-depth
- id: min_ref_read_pos
  doc: Minimum average read position of ref-supporting reads [0.1]
  type: boolean
  inputBinding:
    prefix: --min-ref-readpos
- id: min_var_read_pos
  doc: Minimum average read position of var-supporting reads [0.1]
  type: boolean
  inputBinding:
    prefix: --min-var-readpos
- id: min_ref_dist3
  doc: Minimum average distance to effective 3' end (ref) [0.1]
  type: boolean
  inputBinding:
    prefix: --min-ref-dist3
- id: min_var_dist3
  doc: Minimum average distance to effective 3' end (var) [0.1]
  type: boolean
  inputBinding:
    prefix: --min-var-dist3
- id: min_stranded_ness
  doc: Minimum fraction of variant reads from each strand [0.01]
  type: boolean
  inputBinding:
    prefix: --min-strandedness
- id: min_strand_reads
  doc: Minimum allele depth required to perform the strand tests [5]
  type: boolean
  inputBinding:
    prefix: --min-strand-reads
- id: min_ref_base_qual
  doc: Minimum average base quality for ref allele [15]
  type: boolean
  inputBinding:
    prefix: --min-ref-basequal
- id: min_var_base_qual
  doc: Minimum average base quality for var allele [15]
  type: boolean
  inputBinding:
    prefix: --min-var-basequal
- id: max_base_qual_diff
  doc: Maximum average base quality diff (ref - var) [50]
  type: boolean
  inputBinding:
    prefix: --max-basequal-diff
- id: min_ref_avg_rl
  doc: Minimum average trimmed read length for ref allele [90]
  type: boolean
  inputBinding:
    prefix: --min-ref-avgrl
- id: min_var_avg_rl
  doc: Minimum average trimmed read length for var allele [90]
  type: boolean
  inputBinding:
    prefix: --min-var-avgrl
- id: max_rl_diff
  doc: Maximum average relative read length difference (ref - var) [0.25]
  type: boolean
  inputBinding:
    prefix: --max-rl-diff
- id: max_ref_mm_qs
  doc: Maximum mismatch quality sum of reference-supporting reads [100]
  type: boolean
  inputBinding:
    prefix: --max-ref-mmqs
- id: max_var_mm_qs
  doc: Maximum mismatch quality sum of variant-supporting reads [100]
  type: boolean
  inputBinding:
    prefix: --max-var-mmqs
- id: min_mm_qs_diff
  doc: Minimum average mismatch quality sum (var - ref) [0]
  type: boolean
  inputBinding:
    prefix: --min-mmqs-diff
- id: max_mm_qs_diff
  doc: Maximum average mismatch quality sum (var - ref) [50]
  type: boolean
  inputBinding:
    prefix: --max-mmqs-diff
- id: min_ref_map_qual
  doc: Minimum average mapping quality for ref allele [15]
  type: boolean
  inputBinding:
    prefix: --min-ref-mapqual
- id: min_var_map_qual
  doc: Minimum average mapping quality for var allele [15]
  type: boolean
  inputBinding:
    prefix: --min-var-mapqual
- id: max_map_qual_diff
  doc: Maximum average mapping quality (ref - var) [50]
  type: boolean
  inputBinding:
    prefix: --max-mapqual-diff
outputs: []
cwlVersion: v1.1
baseCommand:
- varscan
- fpfilter
