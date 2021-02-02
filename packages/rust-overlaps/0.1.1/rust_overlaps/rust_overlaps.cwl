class: CommandLineTool
id: rust_overlaps.cwl
inputs:
- id: in_edit_distance
  doc: Uses Levenshtein / edit distance instead of Hamming distance
  type: boolean
  inputBinding:
    prefix: --edit_distance
- id: in_format_line
  doc: The first line of the output file will contain a TSV header line.
  type: File
  inputBinding:
    prefix: --format_line
- id: in_greedy_output
  doc: Threads print solutions to output greedily instead of storing them. Limited
    duplication may
  type: boolean
  inputBinding:
    prefix: --greedy_output
- id: in_inclusions
  doc: Enables finding of inclusion overlaps (one string within another)
  type: boolean
  inputBinding:
    prefix: --inclusions
- id: in_no_n
  doc: "Omits N symbol from alphabet saving time. Will remove N symbols from input\
    \ file (with a\nwarning)"
  type: boolean
  inputBinding:
    prefix: --no_n
- id: in_print
  doc: "For each solution printed to file, also prints a rough visualization to stdout\
    \ (mostly for\ndebugging purposes)"
  type: boolean
  inputBinding:
    prefix: --print
- id: in_reversals
  doc: Enables reversals of input strings
  type: boolean
  inputBinding:
    prefix: --reversals
- id: in_track_progress
  doc: Prints progress bar for completed tasks and ETA to stdout
  type: boolean
  inputBinding:
    prefix: --track_progress
- id: in_verbose
  doc: Prints completed steps of the run process
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_mode
  doc: "Uses the filtering scheme mode given options {valimaki, kucherov}. Modes\n\
    can also be supplied string arguments i.e. 'kucherov_2'. (Default :\nkucherov_2"
  type: string
  inputBinding:
    prefix: --mode
- id: in_worker_threads
  doc: Number of worker threads used. Defaults to number of logical cpu cores
  type: long
  inputBinding:
    prefix: --worker_threads
- id: in_arise
  doc: -h, --help              Prints help information
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_format_line
  doc: The first line of the output file will contain a TSV header line.
  type: File
  outputBinding:
    glob: $(inputs.in_format_line)
cwlVersion: v1.1
baseCommand:
- rust-overlaps
