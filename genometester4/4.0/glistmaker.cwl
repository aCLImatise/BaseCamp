#!/usr/bin/env cwl-runner

baseCommand:
- glistmaker
class: CommandLineTool
cwlVersion: v1.0
id: glistmaker
inputs:
- doc: ''
  id: input_files
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: options
  inputBinding:
    position: 1
  type: string
- doc: wordsize (1-32) (default 16)
  id: word_length
  inputBinding:
    prefix: --wordlength
  type: string
- doc: '- specify frequency cut-off (default 1)'
  id: cut_off
  inputBinding:
    prefix: --cutoff
  type: string
- doc: name (default "out")
  id: output_name
  inputBinding:
    prefix: --outputname
  type: string
- doc: '- number of threads the program is run on (default MIN(8, num_input_files))'
  id: num_threads
  inputBinding:
    prefix: --num_threads
  type: boolean
- doc: '- maximum number of temporary tables (default MAX(num_threads, 2))'
  id: max_tables
  inputBinding:
    prefix: --max_tables
  type: boolean
- doc: '- maximum size of the temporary table (default 500000000)'
  id: table_size
  inputBinding:
    prefix: --table_size
  type: boolean
- doc: '- increase debug level'
  id: d
  inputBinding:
    prefix: -D
  type: boolean
