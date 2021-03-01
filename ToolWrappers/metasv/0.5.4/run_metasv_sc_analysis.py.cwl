class: CommandLineTool
id: run_metasv_sc_analysis.py.cwl
inputs:
- id: in_bams
  doc: 'BAMs (default: None)'
  type: string[]
  inputBinding:
    prefix: --bams
- id: in_chromosomes
  doc: 'Chromosomes (default: [])'
  type: string[]
  inputBinding:
    prefix: --chromosomes
- id: in_workdir
  doc: 'Working directory (default: work)'
  type: Directory?
  inputBinding:
    prefix: --workdir
- id: in_num_threads
  doc: 'Number of threads to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --num_threads
- id: in_min_avg_base_qual
  doc: 'Minimum average base quality (default: 20)'
  type: long?
  inputBinding:
    prefix: --min_avg_base_qual
- id: in_min_mapq
  doc: 'Minimum MAPQ (default: 5)'
  type: long?
  inputBinding:
    prefix: --min_mapq
- id: in_min_soft_clip
  doc: 'Minimum soft-clip (default: 20)'
  type: long?
  inputBinding:
    prefix: --min_soft_clip
- id: in_max_nm
  doc: 'Maximum number of edits (default: 10)'
  type: long?
  inputBinding:
    prefix: --max_nm
- id: in_min_matches
  doc: 'Minimum number of matches (default: 50)'
  type: long?
  inputBinding:
    prefix: --min_matches
- id: in_i_size_mean
  doc: 'Insert-size mean (default: 350.0)'
  type: long?
  inputBinding:
    prefix: --isize_mean
- id: in_i_size_sd
  doc: 'Insert-size s.d. (default: 50.0)'
  type: long?
  inputBinding:
    prefix: --isize_sd
- id: in_pad
  doc: "Padding on both sides of the candidate locations\n(default: 500)"
  type: long?
  inputBinding:
    prefix: --pad
- id: in_min_support_ins
  doc: "Minimum read support for calling insertions using\nsoft-clips (including neighbors)\
    \ (default: 15)"
  type: long?
  inputBinding:
    prefix: --min_support_ins
- id: in_min_support_frac_ins
  doc: "Minimum fraction of reads supporting insertion using\nsoft-clips (including\
    \ neighbors) (default: 0.05)"
  type: long?
  inputBinding:
    prefix: --min_support_frac_ins
- id: in_skip_bed
  doc: "BED regions with which no overlap should happen\n(default: None)"
  type: string?
  inputBinding:
    prefix: --skip_bed
- id: in_max_intervals
  doc: "Maximum number of intervals to process. Intervals are\nranked by normalized\
    \ read-support (default: 10000)"
  type: long?
  inputBinding:
    prefix: --max_intervals
- id: in_svs_to_soft_clip
  doc: "[{DUP,INV,DEL,INS} ...]\nSVs to perform soft-clip analysis on (default:\n\
    set(['DUP', 'INV', 'DEL', 'INS']))"
  type: string?
  inputBinding:
    prefix: --svs_to_softclip
- id: in_overlap_ratio
  doc: 'Reciprocal overlap ratio (default: 0.5)'
  type: double?
  inputBinding:
    prefix: --overlap_ratio
- id: in_mean_read_length
  doc: 'Mean read length (default: 100)'
  type: long?
  inputBinding:
    prefix: --mean_read_length
- id: in_mean_read_coverage
  doc: 'Mean read coverage (default: 50)'
  type: long?
  inputBinding:
    prefix: --mean_read_coverage
- id: in_min_ins_cov_frac
  doc: "Minimum read coverage around the insertion breakpoint.\n(default: 0.5)"
  type: double?
  inputBinding:
    prefix: --min_ins_cov_frac
- id: in_max_ins_cov_frac
  doc: "Maximum read coverage around the insertion breakpoint.\n(default: 1.5)"
  type: long?
  inputBinding:
    prefix: --max_ins_cov_frac
- id: in_assembly_max_tools
  doc: "Skip assembly if more than this many tools support a\ncall (default 1) (default:\
    \ 1)"
  type: long?
  inputBinding:
    prefix: --assembly_max_tools
- id: in_other_scale
  doc: "Parameter to control none SV type resolution (default:\n5)"
  type: long?
  inputBinding:
    prefix: --other_scale
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- run_metasv_sc_analysis.py
