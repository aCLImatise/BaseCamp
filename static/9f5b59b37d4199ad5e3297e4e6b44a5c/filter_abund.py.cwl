class: CommandLineTool
id: filter_abund.py.cwl
inputs:
- id: in_info
  doc: print citation information
  type: boolean?
  inputBinding:
    prefix: --info
- id: in_threads
  doc: 'Number of simultaneous threads to execute (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_cut_off
  doc: 'Trim at k-mers below this abundance. (default: 2)'
  type: long?
  inputBinding:
    prefix: --cutoff
- id: in_variable_coverage
  doc: "Only trim low-abundance k-mers from sequences that\nhave high coverage. (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --variable-coverage
- id: in_normalize_to
  doc: "Base the variable-coverage cutoff on this median k-mer\nabundance. (default:\
    \ 20)"
  type: long?
  inputBinding:
    prefix: --normalize-to
- id: in_output
  doc: "Output the trimmed sequences into a single file with\nthe given filename instead\
    \ of creating a new file for\neach input file. (default: None)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  inputBinding:
    prefix: --force
- id: in_quiet
  doc: 'Compress output using gzip (default: False)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_bzip
  doc: 'Compress output using bzip2 (default: False)'
  type: boolean?
  inputBinding:
    prefix: --bzip
- id: in_input_count_graph_filename
  doc: The input k-mer countgraph filename
  type: string
  inputBinding:
    position: 0
- id: in_input_sequence_filename
  doc: Input FAST[AQ] sequence filename
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output the trimmed sequences into a single file with\nthe given filename instead\
    \ of creating a new file for\neach input file. (default: None)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_force
  doc: 'Overwrite output file if it exists (default: False)'
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints: []
cwlVersion: v1.1
baseCommand:
- filter-abund.py
