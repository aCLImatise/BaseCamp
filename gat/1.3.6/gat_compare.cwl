class: CommandLineTool
id: gat_compare.py.cwl
inputs:
- id: time_it
  doc: store timeing information in file [none].
  type: string
  inputBinding:
    prefix: --timeit
- id: time_it_name
  doc: name in timing file for this class of jobs [all].
  type: string
  inputBinding:
    prefix: --timeit-name
- id: time_it_header
  doc: add header for timing information [none].
  type: boolean
  inputBinding:
    prefix: --timeit-header
- id: output_filename_pattern
  doc: OUTPUT filename pattern for various methods [%s].
  type: string
  inputBinding:
    prefix: --output-filename-pattern
- id: force_output
  doc: force over-writing of existing files.
  type: boolean
  inputBinding:
    prefix: --force-output
- id: stdin
  doc: file to read stdin from [default = stdin].
  type: File
  inputBinding:
    prefix: --stdin
- id: log
  doc: file with logging information [default = stdout].
  type: File
  inputBinding:
    prefix: --log
- id: error
  doc: file with error information [default = stderr].
  type: File
  inputBinding:
    prefix: --error
- id: stdout
  doc: file where output is to go [default = stdout].
  type: File
  inputBinding:
    prefix: --stdout
outputs: []
cwlVersion: v1.1
baseCommand:
- gat-compare.py
