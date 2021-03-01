class: CommandLineTool
id: nanoplexer.cwl
inputs:
- id: in_file_barcode_file
  doc: FILE    barcode file
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_file_dual_barcode
  doc: FILE    dual barcode pair file
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_char_output_path
  doc: CHAR    output path
  type: File?
  inputBinding:
    prefix: -p
- id: in_file_output_log
  doc: FILE    output log file
  type: File?
  inputBinding:
    prefix: -l
- id: in_char_output_mode
  doc: CHAR    output mode, fastq or fasta [default fastq]
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_num_batch_size
  doc: NUM     batch size [default 400M]
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_int_number_threads
  doc: INT     number of threads [default 3]
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_int_target_length
  doc: INT     target length for detecting barcode [default 150]
  type: boolean?
  inputBinding:
    prefix: -L
- id: in_int_match_score
  doc: INT     match score [default 2]
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_int_mismatch_score
  doc: INT     mismatch score [default 2]
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_int_gap_open
  doc: INT     gap open score [default 3]
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_int_gap_extension
  doc: INT     gap extension score [default 1]
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_int_minimal_alignment
  doc: INT     minimal alignment score for demultiplexing
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_ignore_parameter_estimation
  doc: ignore parameter estimation
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_show_version_number
  doc: show version number
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_input_dot_fast_q
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_char_output_path
  doc: CHAR    output path
  type: File?
  outputBinding:
    glob: $(inputs.in_char_output_path)
- id: out_file_output_log
  doc: FILE    output log file
  type: File?
  outputBinding:
    glob: $(inputs.in_file_output_log)
hints: []
cwlVersion: v1.1
baseCommand:
- nanoplexer
