class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/nanoplexer.cwl
inputs:
- id: file__barcode_file
  doc: FILE    barcode file
  type: boolean
  inputBinding:
    prefix: -b
- id: file_dual_barcode_file
  doc: FILE    dual barcode pair file
  type: boolean
  inputBinding:
    prefix: -d
- id: char_output_path
  doc: CHAR    output path
  type: boolean
  inputBinding:
    prefix: -p
- id: file_output_file
  doc: FILE    output log file
  type: boolean
  inputBinding:
    prefix: -l
- id: char_output_mode
  doc: CHAR    output mode, fastq or fasta [default fastq]
  type: boolean
  inputBinding:
    prefix: -M
- id: num_batch_size
  doc: NUM     batch size [default 400M]
  type: boolean
  inputBinding:
    prefix: -B
- id: int_number_threads
  doc: INT     number of threads [default 3]
  type: boolean
  inputBinding:
    prefix: -t
- id: int_target_length
  doc: INT     target length for detecting barcode [default 150]
  type: boolean
  inputBinding:
    prefix: -L
- id: int_match_score
  doc: INT     match score [default 2]
  type: boolean
  inputBinding:
    prefix: -m
- id: int_mismatch_score
  doc: INT     mismatch score [default 2]
  type: boolean
  inputBinding:
    prefix: -x
- id: int_gap_score
  doc: INT     gap open score [default 3]
  type: boolean
  inputBinding:
    prefix: -o
- id: int_extension_score
  doc: INT     gap extension score [default 1]
  type: boolean
  inputBinding:
    prefix: -e
- id: int_minimal_alignment
  doc: INT     minimal alignment score for demultiplexing
  type: boolean
  inputBinding:
    prefix: -s
- id: ignore_parameter_estimation
  doc: ignore parameter estimation
  type: boolean
  inputBinding:
    prefix: -i
- id: show_version_number
  doc: show version number
  type: boolean
  inputBinding:
    prefix: -v
- id: input_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- nanoplexer
