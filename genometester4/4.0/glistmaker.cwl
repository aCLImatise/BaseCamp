class: CommandLineTool
id: glistmaker.cwl
inputs:
- id: input_files
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: word_length
  doc: wordsize (1-32) (default 16)
  type: string
  inputBinding:
    prefix: --wordlength
- id: cut_off
  doc: '- specify frequency cut-off (default 1)'
  type: string
  inputBinding:
    prefix: --cutoff
- id: output_name
  doc: name (default "out")
  type: string
  inputBinding:
    prefix: --outputname
- id: num_threads
  doc: '- number of threads the program is run on (default MIN(8, num_input_files))'
  type: boolean
  inputBinding:
    prefix: --num_threads
- id: max_tables
  doc: '- maximum number of temporary tables (default MAX(num_threads, 2))'
  type: boolean
  inputBinding:
    prefix: --max_tables
- id: table_size
  doc: '- maximum size of the temporary table (default 500000000)'
  type: boolean
  inputBinding:
    prefix: --table_size
- id: d
  doc: '- increase debug level'
  type: boolean
  inputBinding:
    prefix: -D
outputs: []
cwlVersion: v1.1
baseCommand:
- glistmaker
