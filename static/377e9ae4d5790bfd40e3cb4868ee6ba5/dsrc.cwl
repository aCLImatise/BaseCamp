class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dsrc.cwl
inputs:
- id: dna_compression_mode
  doc: '<n>   : DNA compression mode: 0-3, default: 0'
  type: boolean
  inputBinding:
    prefix: -d
- id: quality_compression_mode
  doc: '<n>   : Quality compression mode: 0-2, default: 0'
  type: boolean
  inputBinding:
    prefix: -q
- id: keep_only_fields
  doc: '<1,..>: keep only those fields no. in tag field string, default: keep all'
  type: boolean
  inputBinding:
    prefix: -f
- id: fastq_input_buffer
  doc: '<n>   : FASTQ input buffer size in MB, default: 8'
  type: boolean
  inputBinding:
    prefix: -b
- id: quality_offset_default
  doc: '<n>   : Quality offset, default: 0'
  type: boolean
  inputBinding:
    prefix: -o
- id: use_mode_default
  doc: ': use Quality lossy mode (Illumina binning scheme), default: 0'
  type: boolean
  inputBinding:
    prefix: -l
- id: calculate_check_calculation
  doc: ': calculate and check CRC32 checksum calculation per block, default: 0'
  type: boolean
  inputBinding:
    prefix: -c
- id: processing_threads_number
  doc: '<n>   : processing threads number, default (available h/w threads): 8, max:
    64'
  type: boolean
  inputBinding:
    prefix: -t
- id: use_stdinstdout_readingwriting
  doc: ': use stdin/stdout for reading/writing raw FASTQ data'
  type: boolean
  inputBinding:
    prefix: -s
- id: verbose_mode_default
  doc: ': verbose mode, default: false'
  type: boolean
  inputBinding:
    prefix: -v
- id: c_vertical_lined
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: input_filename
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: output_filename
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- dsrc
