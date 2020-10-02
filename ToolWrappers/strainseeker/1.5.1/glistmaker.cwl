class: CommandLineTool
id: glistmaker.cwl
inputs:
- id: in_word_length
  doc: '- specify index wordsize (1-32) (default 16)'
  type: long
  inputBinding:
    prefix: --wordlength
- id: in_cut_off
  doc: '- specify frequency cut-off (default 1)'
  type: long
  inputBinding:
    prefix: --cutoff
- id: in_output_name
  doc: '- specify output name (default "out")'
  type: string
  inputBinding:
    prefix: --outputname
- id: in_num_threads
  doc: '- number of threads the program is run on (default MIN(8, num_input_files))'
  type: boolean
  inputBinding:
    prefix: --num_threads
- id: in_max_tables
  doc: '- maximum number of temporary tables (default MAX(num_threads, 2))'
  type: boolean
  inputBinding:
    prefix: --max_tables
- id: in_table_size
  doc: '- maximum size of the temporary table (default 500000000)'
  type: boolean
  inputBinding:
    prefix: --table_size
- id: in_increase_debug_level
  doc: '- increase debug level'
  type: boolean
  inputBinding:
    prefix: -D
- id: in_input_files
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- glistmaker
