class: CommandLineTool
id: taxonkit_lineage.cwl
inputs:
- id: in_delimiter
  doc: field delimiter in lineage (default ";")
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_show_lineage_tax_ids
  doc: appending lineage consisting of taxids
  type: boolean?
  inputBinding:
    prefix: --show-lineage-taxids
- id: in_show_rank
  doc: appending rank of taxids
  type: boolean?
  inputBinding:
    prefix: --show-rank
- id: in_show_status_code
  doc: show status code between lineage
  type: boolean?
  inputBinding:
    prefix: --show-status-code
- id: in_taxid_field
  doc: field index of taxid. data should be tab-separated (default 1)
  type: long?
  inputBinding:
    prefix: --taxid-field
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
  doc: 'number of CPUs. 2 is enough (default value: 1 for single-CPU PC, 2 for others)
    (default 2)'
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
hints: []
cwlVersion: v1.1
baseCommand:
- taxonkit
- lineage
