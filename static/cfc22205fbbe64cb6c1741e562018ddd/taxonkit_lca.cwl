class: CommandLineTool
id: taxonkit_lca.cwl
inputs:
- id: in_separate_r
  doc: separater for TaxIds (default " ")
  type: string?
  inputBinding:
    prefix: --separater
- id: in_skip_deleted
  doc: skip deleted TaxIds and compute with left ones
  type: boolean?
  inputBinding:
    prefix: --skip-deleted
- id: in_skip_unfound
  doc: skip unfound TaxIds and compute with left ones
  type: boolean?
  inputBinding:
    prefix: --skip-unfound
- id: in_tax_ids_field
  doc: field index of taxid. input data should be tab-separated (default 1)
  type: long?
  inputBinding:
    prefix: --taxids-field
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
  doc: number of CPUs. 4 is enough (default 2)
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
  dockerPull: quay.io/biocontainers/taxonkit:0.8.0--h9ee0642_0
cwlVersion: v1.1
baseCommand:
- taxonkit
- lca
