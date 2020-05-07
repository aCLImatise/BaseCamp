class: CommandLineTool
id: rust_overlaps.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_path
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: out_path
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: err_rate
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: thresh
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: edit_distance
  doc: Uses Levenshtein / edit distance instead of Hamming distance
  type: boolean
  inputBinding:
    prefix: --edit_distance
- id: format_line
  doc: The first line of the output file will contain a TSV header line.
  type: boolean
  inputBinding:
    prefix: --format_line
- id: greedy_output
  doc: Threads print solutions to output greedily instead of storing them. Limited
    duplication may arise
  type: boolean
  inputBinding:
    prefix: --greedy_output
- id: inclusions
  doc: Enables finding of inclusion overlaps (one string within another)
  type: boolean
  inputBinding:
    prefix: --inclusions
- id: no_n
  doc: Omits N symbol from alphabet saving time. Will remove N symbols from input
    file (with a warning)
  type: boolean
  inputBinding:
    prefix: --no_n
- id: print
  doc: For each solution printed to file, also prints a rough visualization to stdout
    (mostly for debugging purposes)
  type: boolean
  inputBinding:
    prefix: --print
- id: reversals
  doc: Enables reversals of input strings
  type: boolean
  inputBinding:
    prefix: --reversals
- id: track_progress
  doc: Prints progress bar for completed tasks and ETA to stdout
  type: boolean
  inputBinding:
    prefix: --track_progress
- id: verbose
  doc: Prints completed steps of the run process
  type: boolean
  inputBinding:
    prefix: --verbose
- id: mode
  doc: "Uses the filtering scheme mode given options {valimaki, kucherov}. Modes can\
    \ also be supplied string arguments i.e. 'kucherov_2'. (Default : kucherov_2"
  type: string
  inputBinding:
    prefix: --mode
- id: worker_threads
  doc: Number of worker threads used. Defaults to number of logical cpu cores
  type: string
  inputBinding:
    prefix: --worker_threads
outputs: []
cwlVersion: v1.1
baseCommand:
- rust-overlaps
