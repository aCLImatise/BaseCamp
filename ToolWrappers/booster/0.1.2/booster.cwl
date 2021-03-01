class: CommandLineTool
id: booster.cwl
inputs:
- id: in_input
  doc: ': Input tree file'
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_boot
  doc: ': Bootstrap tree file (1 file containing all bootstrap trees)'
  type: boolean?
  inputBinding:
    prefix: --boot
- id: in_out
  doc: ': Output file (optional) with normalized support values, default : stdout'
  type: File?
  inputBinding:
    prefix: --out
- id: in_out_raw
  doc: ': Output file (optional) with raw support values in the form of id|avgdist|depth,
    default : none'
  type: File?
  inputBinding:
    prefix: --out-raw
- id: in_num_threads
  doc: ': Number of threads (default 1)'
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_stat_file
  doc: ': Prints output statistics for each branch in the given output file (optional)'
  type: File?
  inputBinding:
    prefix: --stat-file
- id: in_count_per_branch
  doc: ': Prints individual taxa moves for each branches in the log file (only with
    -S & -a tbe)'
  type: boolean?
  inputBinding:
    prefix: --count-per-branch
- id: in_dist_cut_off
  doc: ': Distance cutoff to consider a branch for taxa transfer index computation
    (-a tbe only, default 0.3)'
  type: boolean?
  inputBinding:
    prefix: --dist-cutoff
- id: in_algo
  doc: ': tbe or fbp (default tbe)'
  type: boolean?
  inputBinding:
    prefix: --algo
- id: in_quiet
  doc: ': Does not print progress messages during analysis'
  type: boolean?
  inputBinding:
    prefix: --quiet
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: ': Output file (optional) with normalized support values, default : stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_out_raw
  doc: ': Output file (optional) with raw support values in the form of id|avgdist|depth,
    default : none'
  type: File?
  outputBinding:
    glob: $(inputs.in_out_raw)
- id: out_stat_file
  doc: ': Prints output statistics for each branch in the given output file (optional)'
  type: File?
  outputBinding:
    glob: $(inputs.in_stat_file)
hints: []
cwlVersion: v1.1
baseCommand:
- booster
