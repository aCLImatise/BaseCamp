class: CommandLineTool
id: ema.cwl
inputs:
- id: in_specify_barcode_whitelist
  doc: ': specify barcode whitelist [required]'
  type: File?
  inputBinding:
    prefix: -w
- id: in_specify_output_prefix
  doc: ': specify output prefix [required]'
  type: string?
  inputBinding:
    prefix: -o
- id: in_number_barcode_make
  doc: ': number of barcode buckets to make [500]'
  type: long?
  inputBinding:
    prefix: -n
- id: in_output_bxzformatted_fastqs
  doc: ': output BX:Z-formatted FASTQs [off]'
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_set_number_threads
  doc: ': set number of threads [1]'
  type: long?
  inputBinding:
    prefix: -t
- id: in_first_preprocessed_sorted
  doc: ': first (preprocessed and sorted) FASTQ file [none]'
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_second_preprocessed_sorted
  doc: ': second (preprocessed and sorted) FASTQ file [none]'
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_specify_special_path
  doc: ': specify special FASTQ path [none]'
  type: File?
  inputBinding:
    prefix: -s
- id: in_multiinput_mode_takes
  doc: ': multi-input mode; takes input files after flags and spawns a thread for
    each [off]'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in__indexed_reference
  doc: ': indexed reference [required]'
  type: File?
  inputBinding:
    prefix: -r
- id: in_full_read_group
  doc: ": full read group string (e.g. '@RG\\tID:foo\\tSM:bar') [none]"
  type: string?
  inputBinding:
    prefix: -R
- id: in_apply_fragment_optimization
  doc: ': apply fragment read density optimization [off]'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_sequencing_platform_one
  doc: ": sequencing platform (one of '10x', 'tru', 'cpt') [10x]"
  type: long?
  inputBinding:
    prefix: -p
- id: in_index_follow_tag
  doc: ": index to follow 'BX' tag in SAM output [1]  -t <threads>: set number of\
    \ threads [1]"
  type: long?
  inputBinding:
    prefix: -i
- id: in_count_vertical_line_preproc_vertical_line_align_vertical_line_help
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ema
