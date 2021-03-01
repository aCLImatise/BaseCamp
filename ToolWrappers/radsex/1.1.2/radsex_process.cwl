class: CommandLineTool
id: radsex_process.cwl
inputs:
- id: in_input_dir
  doc: TEXT:DIR                  Path to a directory contains demultiplexed sequence
    files              [REQUIRED]
  type: boolean?
  inputBinding:
    prefix: --input-dir
- id: in_output_file
  doc: TEXT                      Path to the output file (table of marker depths in
    each individual)    [REQUIRED]
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_threads
  doc: UINT:INT in [1 - 9999]    Number of threads to use                                               [1]
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_min_depth
  doc: UINT:INT in [1 - 9999]    Minimum depth in at least one individual to retain
    a marker            [1]
  type: boolean?
  inputBinding:
    prefix: --min-depth
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: TEXT                      Path to the output file (table of marker depths in
    each individual)    [REQUIRED]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- radsex
- process
