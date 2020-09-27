class: CommandLineTool
id: fahash.cwl
inputs:
- id: in_print_word_usage
  doc: Print word usage statistics for hash-file
  type: File
  inputBinding:
    prefix: -T
- id: in_build_tables_hashfile
  doc: Build hash tables (hash-file) from sequence files,
  type: File
  inputBinding:
    prefix: -b
- id: in_set_word_size
  doc: Set word size when building hash tables
  type: long
  inputBinding:
    prefix: -w
- id: in_set_discontiguity_building
  doc: Set discontiguity when building hash tables
  type: string
  inputBinding:
    prefix: -f
- id: in_skip_repeats_building
  doc: Skip repeats when building hash-file
  type: boolean
  inputBinding:
    prefix: -k
- id: in_max_set_watermarks
  doc: ',max      Set watermarks for fragment size (in Mb) (version 1 only)'
  type: long
  inputBinding:
    prefix: -F
- id: in_set_size_version
  doc: Set cache size (version 2 only)
  type: long
  inputBinding:
    prefix: -c
- id: in_use_format_version
  doc: Use format version (1|2, 2 is default)
  type: long
  inputBinding:
    prefix: -v
- id: in_write_output_file
  doc: Write output to file `outfile'
  type: File
  inputBinding:
    prefix: -o
- id: in_hv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hV
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write_output_file
  doc: Write output to file `outfile'
  type: File
  outputBinding:
    glob: $(inputs.in_write_output_file)
cwlVersion: v1.1
baseCommand:
- fahash
