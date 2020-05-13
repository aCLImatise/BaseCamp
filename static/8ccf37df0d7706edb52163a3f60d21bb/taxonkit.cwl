class: CommandLineTool
id: taxonkit.cwl
inputs:
- id: version
  doc: print version information and check for update
  type: string
  inputBinding:
    position: 0
- id: data_dir
  doc: directory containing nodes.dmp and names.dmp (default "/home/ubuntu/.taxonkit")
  type: string
  inputBinding:
    prefix: --data-dir
- id: line_buffered
  doc: use line buffering on output, i.e., immediately writing to stdin/file for every
    line of output
  type: boolean
  inputBinding:
    prefix: --line-buffered
- id: out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: string
  inputBinding:
    prefix: --out-file
- id: threads
  doc: 'number of CPUs. 2 is enough (default value: 1 for single-CPU PC, 2 for others)
    (default 2)'
  type: long
  inputBinding:
    prefix: --threads
- id: verbose
  doc: print verbose information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- taxonkit
