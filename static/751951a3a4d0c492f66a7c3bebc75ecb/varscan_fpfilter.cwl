class: CommandLineTool
id: varscan_fpfilter.cwl
inputs:
- id: in_output_file
  doc: Optional output file for filter-pass variants
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_filtered_file
  doc: Optional output file for filter-fail variants
  type: File?
  inputBinding:
    prefix: --filtered-file
- id: in_dream_three_settings
  doc: If set to 1, optimizes filter parameters based on TCGA-ICGC DREAM-3 SNV Challenge
    results
  type: boolean?
  inputBinding:
    prefix: --dream3-settings
- id: in_keep_failures
  doc: If set to 1, includes failures in the output file
  type: File?
  inputBinding:
    prefix: --keep-failures
- id: in_min_var_count
  doc: Minimum number of variant-supporting reads [4]
  type: boolean?
  inputBinding:
    prefix: --min-var-count
- id: in_min_var_count_lc
  doc: Minimum number of variant-supporting reads when depth below somaticPdepth [2]
  type: boolean?
  inputBinding:
    prefix: --min-var-count-lc
- id: in_min_var_freq
  doc: Minimum variant allele frequency [0.05]
  type: boolean?
  inputBinding:
    prefix: --min-var-freq
- id: in_max_somatic_p
  doc: Maximum somatic p-value [1.0]
  type: boolean?
  inputBinding:
    prefix: --max-somatic-p
- id: in_max_somatic_p_depth
  doc: Depth required to test max somatic p-value [10]
  type: boolean?
  inputBinding:
    prefix: --max-somatic-p-depth
- id: in_min_ref_read_pos
  doc: Minimum average read position of ref-supporting reads [0.1]
  type: boolean?
  inputBinding:
    prefix: --min-ref-readpos
- id: in_min_var_read_pos
  doc: Minimum average read position of var-supporting reads [0.1]
  type: boolean?
  inputBinding:
    prefix: --min-var-readpos
- id: in_min_ref_dist_three
  doc: Minimum average distance to effective 3' end (ref) [0.1]
  type: boolean?
  inputBinding:
    prefix: --min-ref-dist3
- id: in_min_var_dist_three
  doc: Minimum average distance to effective 3' end (var) [0.1]
  type: boolean?
  inputBinding:
    prefix: --min-var-dist3
- id: in_min_stranded_ness
  doc: Minimum fraction of variant reads from each strand [0.01]
  type: boolean?
  inputBinding:
    prefix: --min-strandedness
- id: in_min_strand_reads
  doc: Minimum allele depth required to perform the strand tests [5]
  type: boolean?
  inputBinding:
    prefix: --min-strand-reads
- id: in_min_ref_base_qual
  doc: Minimum average base quality for ref allele [15]
  type: boolean?
  inputBinding:
    prefix: --min-ref-basequal
- id: in_min_var_base_qual
  doc: Minimum average base quality for var allele [15]
  type: boolean?
  inputBinding:
    prefix: --min-var-basequal
- id: in_max_base_qual_diff
  doc: Maximum average base quality diff (ref - var) [50]
  type: boolean?
  inputBinding:
    prefix: --max-basequal-diff
- id: in_min_ref_avg_rl
  doc: Minimum average trimmed read length for ref allele [90]
  type: boolean?
  inputBinding:
    prefix: --min-ref-avgrl
- id: in_min_var_avg_rl
  doc: Minimum average trimmed read length for var allele [90]
  type: boolean?
  inputBinding:
    prefix: --min-var-avgrl
- id: in_max_rl_diff
  doc: Maximum average relative read length difference (ref - var) [0.25]
  type: boolean?
  inputBinding:
    prefix: --max-rl-diff
- id: in_max_ref_mm_qs
  doc: Maximum mismatch quality sum of reference-supporting reads [100]
  type: boolean?
  inputBinding:
    prefix: --max-ref-mmqs
- id: in_max_var_mm_qs
  doc: Maximum mismatch quality sum of variant-supporting reads [100]
  type: boolean?
  inputBinding:
    prefix: --max-var-mmqs
- id: in_min_mm_qs_diff
  doc: Minimum average mismatch quality sum (var - ref) [0]
  type: boolean?
  inputBinding:
    prefix: --min-mmqs-diff
- id: in_max_mm_qs_diff
  doc: Maximum average mismatch quality sum (var - ref) [50]
  type: boolean?
  inputBinding:
    prefix: --max-mmqs-diff
- id: in_min_ref_map_qual
  doc: Minimum average mapping quality for ref allele [15]
  type: boolean?
  inputBinding:
    prefix: --min-ref-mapqual
- id: in_min_var_map_qual
  doc: Minimum average mapping quality for var allele [15]
  type: boolean?
  inputBinding:
    prefix: --min-var-mapqual
- id: in_max_map_qual_diff
  doc: Maximum average mapping quality (ref - var) [50]
  type: boolean?
  inputBinding:
    prefix: --max-mapqual-diff
- id: in_jar
  doc: ''
  type: string?
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fp_filter
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_variant
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_file
  doc: ''
  type: File?
  inputBinding:
    position: 3
- id: in_read_count
  doc: ''
  type: string?
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Optional output file for filter-pass variants
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_filtered_file
  doc: Optional output file for filter-fail variants
  type: File?
  outputBinding:
    glob: $(inputs.in_filtered_file)
- id: out_keep_failures
  doc: If set to 1, includes failures in the output file
  type: File?
  outputBinding:
    glob: $(inputs.in_keep_failures)
hints: []
cwlVersion: v1.1
baseCommand:
- varscan
- fpfilter
