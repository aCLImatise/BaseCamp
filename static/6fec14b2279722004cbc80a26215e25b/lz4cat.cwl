class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/lz4cat.cwl
inputs:
- id: fast_compression_default
  doc: ': Fast compression (default) '
  type: boolean
  inputBinding:
    prefix: '-1'
- id: _high_compression
  doc: ': High compression '
  type: boolean
  inputBinding:
    prefix: '-9'
- id: decompression_default_extension
  doc: ': decompression (default for .lz4 extension)'
  type: boolean
  inputBinding:
    prefix: -d
- id: _force_compression
  doc: ': force compression'
  type: boolean
  inputBinding:
    prefix: -z
- id: overwrite_output_prompting
  doc: ': overwrite output without prompting '
  type: boolean
  inputBinding:
    prefix: -f
- id: h_slash_h
  doc: ': display help/long help and exit'
  type: boolean
  inputBinding:
    prefix: -h/-H
- id: display_version_number
  doc: ': display Version number and exit'
  type: boolean
  inputBinding:
    prefix: -V
- id: _verbose_mode
  doc: ': verbose mode'
  type: boolean
  inputBinding:
    prefix: -v
- id: suppress_warnings_specify
  doc: ': suppress warnings; specify twice to suppress errors too'
  type: boolean
  inputBinding:
    prefix: -q
- id: force_write_standard
  doc: ': force write to standard output, even if it is the console'
  type: boolean
  inputBinding:
    prefix: -c
- id: test_compressed_file
  doc: ': test compressed file integrity'
  type: boolean
  inputBinding:
    prefix: -t
- id: multiple_input_files
  doc: ': multiple input files (implies automatic output filenames)'
  type: boolean
  inputBinding:
    prefix: -m
- id: compress_using_format
  doc: ': compress using Legacy format (Linux kernel compression)'
  type: boolean
  inputBinding:
    prefix: -l
- id: block_size_default
  doc: '#    : Block size [4-7](default : 7)'
  type: boolean
  inputBinding:
    prefix: -B
- id: bd
  doc: ': Block dependency (improve compression ratio)'
  type: boolean
  inputBinding:
    prefix: -BD
- id: _benchmark_files
  doc: ': benchmark file(s)'
  type: boolean
  inputBinding:
    prefix: -b
- id: iteration_loops_default
  doc: '#    : iteration loops [1-9](default : 3), benchmark mode only'
  type: boolean
  inputBinding:
    prefix: -i
outputs: []
cwlVersion: v1.1
baseCommand:
- lz4cat
