class: CommandLineTool
id: ldhelmet_find_confs.cwl
inputs:
- id: in__display_version
  doc: '[ --version ]                Display version.'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_num_threads
  doc: (=1)          Number of threads to use.
  type: long
  inputBinding:
    prefix: --num_threads
- id: in_arg_window_size
  doc: '[ --window_size ] arg (=50)  Window size.'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_arg_name_output
  doc: '[ --output_file ] arg        Name for output file.'
  type: File
  inputBinding:
    prefix: -o
- id: in_seq_file_one
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_seq_file_two
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_name_output
  doc: '[ --output_file ] arg        Name for output file.'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_name_output)
cwlVersion: v1.1
baseCommand:
- ldhelmet
- find_confs
