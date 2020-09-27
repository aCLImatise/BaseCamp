class: CommandLineTool
id: taxonkit_list.cwl
inputs:
- id: in_ids
  doc: taxid(s), multiple values should be separated by comma
  type: string
  inputBinding:
    prefix: --ids
- id: in_indent
  doc: indent (default "  ")
  type: string
  inputBinding:
    prefix: --indent
- id: in_json
  doc: output in JSON format. you can save the result in file with suffix ".json"
    and open with modern text editor
  type: File
  inputBinding:
    prefix: --json
- id: in_show_name
  doc: output scientific name
  type: boolean
  inputBinding:
    prefix: --show-name
- id: in_show_rank
  doc: output rank
  type: boolean
  inputBinding:
    prefix: --show-rank
- id: in_data_dir
  doc: directory containing nodes.dmp and names.dmp (default "/root/.taxonkit")
  type: Directory
  inputBinding:
    prefix: --data-dir
- id: in_line_buffered
  doc: use line buffering on output, i.e., immediately writing to stdin/file for every
    line of output
  type: File
  inputBinding:
    prefix: --line-buffered
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File
  inputBinding:
    prefix: --out-file
- id: in_threads
  doc: 'number of CPUs. 2 is enough (default value: 1 for single-CPU PC, 2 for others)
    (default 2)'
  type: long
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: print verbose information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_json
  doc: output in JSON format. you can save the result in file with suffix ".json"
    and open with modern text editor
  type: File
  outputBinding:
    glob: $(inputs.in_json)
- id: out_line_buffered
  doc: use line buffering on output, i.e., immediately writing to stdin/file for every
    line of output
  type: File
  outputBinding:
    glob: $(inputs.in_line_buffered)
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File
  outputBinding:
    glob: $(inputs.in_out_file)
cwlVersion: v1.1
baseCommand:
- taxonkit
- list
