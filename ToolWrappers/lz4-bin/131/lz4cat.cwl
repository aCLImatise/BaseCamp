class: CommandLineTool
id: lz4cat.cwl
inputs:
- id: in_fast_compression_default
  doc: ': Fast compression (default)'
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in__high_compression
  doc: ': High compression'
  type: boolean?
  inputBinding:
    prefix: '-9'
- id: in_decompression_default_extension
  doc: ': decompression (default for .lz4 extension)'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in__force_compression
  doc: ': force compression'
  type: boolean?
  inputBinding:
    prefix: -z
- id: in_overwrite_output_prompting
  doc: ': overwrite output without prompting'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_display_version_number
  doc: ': display Version number and exit'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in__verbose_mode
  doc: ': verbose mode'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_suppress_warnings_specify
  doc: ': suppress warnings; specify twice to suppress errors too'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_force_write_is
  doc: ': force write to standard output, even if it is the console'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_test_compressed_file
  doc: ': test compressed file integrity'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_multiple_input_files
  doc: ': multiple input files (implies automatic output filenames)'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_compress_using_compression
  doc: ': compress using Legacy format (Linux kernel compression)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_bd
  doc: ': Block dependency (improve compression ratio)'
  type: boolean?
  inputBinding:
    prefix: -BD
- id: in_no_frame_crc
  doc: ': disable stream checksum (default:enabled)'
  type: boolean?
  inputBinding:
    prefix: --no-frame-crc
- id: in_content_size
  doc: ': compressed frame includes original size (default:not present)'
  type: boolean?
  inputBinding:
    prefix: --content-size
- id: in__benchmark_files
  doc: ': benchmark file(s)'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_iteration_loops_only
  doc: '#    : iteration loops [1-9](default : 3), benchmark mode only'
  type: boolean?
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lz4cat
