class: CommandLineTool
id: dsrc.cwl
inputs:
- id: in_dna_compression_mode
  doc: '<n>   : DNA compression mode: 0-3, default: 0'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_quality_compression_mode
  doc: '<n>   : Quality compression mode: 0-2, default: 0'
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_keep_only_fields
  doc: '<1,..>: keep only those fields no. in tag field string, default: keep all'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_fastq_input_buffer
  doc: '<n>   : FASTQ input buffer size in MB, default: 8'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_quality_offset_default
  doc: '<n>   : Quality offset, default: 0'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_use_quality_mode
  doc: ': use Quality lossy mode (Illumina binning scheme), default: 0'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_calculate_check_calculation
  doc: ': calculate and check CRC32 checksum calculation per block, default: 0'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_compression_mode_version
  doc: "<n>   : compression mode, where n:\n* 0    - fast version with decent ratio\
    \ (-d0 -q0 -b16)\n* 1    - slower version with better ratio (-d2 -q2 -b64)\n*\
    \ 2    - slow version with best ratio (-d3 -q2 -b256)"
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_processing_threads_number
  doc: '<n>   : processing threads number, default (available h/w threads): 8, max:
    64'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_use_stdinstdout_readingwriting
  doc: ': use stdin/stdout for reading/writing raw FASTQ data'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_verbose_mode_default
  doc: ': verbose mode, default: false'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_c_vertical_lined
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_input_filename
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_output_filename
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_filename)
hints: []
cwlVersion: v1.1
baseCommand:
- dsrc
