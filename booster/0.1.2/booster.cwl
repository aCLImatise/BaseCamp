class: CommandLineTool
id: booster.cwl
inputs:
- id: input
  doc: ': Input tree file'
  type: boolean
  inputBinding:
    prefix: --input
- id: boot
  doc: ': Bootstrap tree file (1 file containing all bootstrap trees)'
  type: boolean
  inputBinding:
    prefix: --boot
- id: out
  doc: ': Output file (optional) with normalized support values, default : stdout'
  type: boolean
  inputBinding:
    prefix: --out
- id: out_raw
  doc: ': Output file (optional) with raw support values in the form of id|avgdist|depth,
    default : none'
  type: boolean
  inputBinding:
    prefix: --out-raw
- id: num_threads
  doc: ': Number of threads (default 1)'
  type: boolean
  inputBinding:
    prefix: --num-threads
- id: stat_file
  doc: ': Prints output statistics for each branch in the given output file (optional)'
  type: boolean
  inputBinding:
    prefix: --stat-file
- id: count_per_branch
  doc: ': Prints individual taxa moves for each branches in the log file (only with
    -S & -a tbe)'
  type: boolean
  inputBinding:
    prefix: --count-per-branch
- id: dist_cut_off
  doc: ': Distance cutoff to consider a branch for taxa transfer index computation
    (-a tbe only, default 0.3)'
  type: boolean
  inputBinding:
    prefix: --dist-cutoff
- id: algo
  doc: ': tbe or fbp (default tbe)'
  type: boolean
  inputBinding:
    prefix: --algo
- id: quiet
  doc: ': Does not print progress messages during analysis'
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- booster
