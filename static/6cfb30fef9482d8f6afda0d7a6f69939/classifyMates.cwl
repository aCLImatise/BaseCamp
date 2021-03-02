class: CommandLineTool
id: classifyMates.cwl
inputs:
- id: in_read_fragments_here
  doc: Read fragments from here
  type: string?
  inputBinding:
    prefix: -G
- id: in_read_overlaps_here
  doc: Read overlaps from here
  type: string?
  inputBinding:
    prefix: -O
- id: in_write_results_here
  doc: Write results here
  type: string?
  inputBinding:
    prefix: -o
- id: in_use_overlaps_less
  doc: Use overlaps with less than 'maxError' fraction error (default 0.045)
  type: long?
  inputBinding:
    prefix: -e
- id: in_use_compute_threads
  doc: Use 'n' compute threads
  type: string?
  inputBinding:
    prefix: -t
- id: in_use_most_unlimited
  doc: "Use at most 'm' GB memory (default: unlimited)"
  type: string?
  inputBinding:
    prefix: -m
- id: in_sl
  doc: '[-m]        Search for mates in libraries l-m'
  type: string?
  inputBinding:
    prefix: -sl
- id: in_bl
  doc: '[-m]        Use libraries l-m for searching'
  type: string?
  inputBinding:
    prefix: -bl
- id: in_cache
  doc: Write loaded data to cache files
  type: boolean?
  inputBinding:
    prefix: -cache
- id: in_cache_only
  doc: Write loaded data to cache files, stop after building
  type: boolean?
  inputBinding:
    prefix: -cacheonly
- id: in_do_report_progress
  doc: Don't report progress.
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_min
  doc: Mates must be at least m bases apart
  type: long?
  inputBinding:
    prefix: -min
- id: in_max
  doc: Mates must be at most m bases apart
  type: long?
  inputBinding:
    prefix: -max
- id: in_in_nie
  doc: Mates must be innie (NOT SUPPORTED)
  type: boolean?
  inputBinding:
    prefix: -innie
- id: in_out_tie
  doc: Mates must be outtie
  type: boolean?
  inputBinding:
    prefix: -outtie
- id: in_bfs
  doc: Use 'breadth-first search'; search at most N fragments
  type: string?
  inputBinding:
    prefix: -bfs
- id: in_dfs
  doc: Use 'depth-first search'; search to depth N overlaps
  type: string?
  inputBinding:
    prefix: -dfs
- id: in_rfs
  doc: Use 'random-path search'; search at most N paths
  type: File?
  inputBinding:
    prefix: -rfs
- id: in_no_suspicious
  doc: Don't search for suspicious pairs.
  type: boolean?
  inputBinding:
    prefix: -nosuspicious
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- classifyMates
