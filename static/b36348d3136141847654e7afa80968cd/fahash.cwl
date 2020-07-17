class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fahash.cwl
inputs:
- id: print_word_usage
  doc: Print word usage statistics for hash-file
  type: string
  inputBinding:
    prefix: -T
- id: build_hash_tables
  doc: Build hash tables (hash-file) from sequence files,
  type: string
  inputBinding:
    prefix: -b
- id: set_word_size
  doc: Set word size when building hash tables
  type: string
  inputBinding:
    prefix: -w
- id: set_discontiguity_building
  doc: Set discontiguity when building hash tables
  type: string
  inputBinding:
    prefix: -f
- id: skip_repeats_building
  doc: Skip repeats when building hash-file
  type: boolean
  inputBinding:
    prefix: -k
- id: max_set_watermarks
  doc: ',max      Set watermarks for fragment size (in Mb) (version 1 only)'
  type: long
  inputBinding:
    prefix: -F
- id: set_size_version
  doc: Set cache size (version 2 only)
  type: string
  inputBinding:
    prefix: -c
- id: use_format_version
  doc: Use format version (1|2, 2 is default)
  type: string
  inputBinding:
    prefix: -v
- id: write_output_file
  doc: Write output to file `outfile'
  type: string
  inputBinding:
    prefix: -o
- id: hv
  doc: ''
  type: boolean
  inputBinding:
    prefix: -hV
outputs: []
cwlVersion: v1.1
baseCommand:
- fahash
