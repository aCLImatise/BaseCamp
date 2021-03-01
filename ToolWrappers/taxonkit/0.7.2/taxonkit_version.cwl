class: CommandLineTool
id: taxonkit_version.cwl
inputs:
- id: in_check_update
  doc: check update
  type: boolean?
  inputBinding:
    prefix: --check-update
- id: in_data_dir
  doc: directory containing nodes.dmp and names.dmp (default "/root/.taxonkit")
  type: Directory?
  inputBinding:
    prefix: --data-dir
- id: in_line_buffered
  doc: use line buffering on output, i.e., immediately writing to stdin/file for every
    line of output
  type: File?
  inputBinding:
    prefix: --line-buffered
- id: in_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_threads
  doc: number of CPUs. 4 is enough (default 4)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: print verbose information
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_line_buffered
  doc: use line buffering on output, i.e., immediately writing to stdin/file for every
    line of output
  type: File?
  outputBinding:
    glob: $(inputs.in_line_buffered)
- id: out_out_file
  doc: out file ("-" for stdout, suffix .gz for gzipped out) (default "-")
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/taxonkit:0.7.2--0
cwlVersion: v1.1
baseCommand:
- taxonkit
- version
