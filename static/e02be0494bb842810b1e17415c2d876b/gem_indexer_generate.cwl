class: CommandLineTool
id: gem_indexer_generate.cwl
inputs:
- id: in_mandatory
  doc: (mandatory)
  type: string?
  inputBinding:
    prefix: -o
- id: in_sampling_rate
  doc: "(default=32,\n16/32/64/128 ok)"
  type: long?
  inputBinding:
    prefix: --sampling-rate
- id: in_index_type
  doc: "'fmi-dna'|'fmi-dna-compact'|'fmi-general'\n(default='fmi-dna')"
  type: boolean?
  inputBinding:
    prefix: --index-type
- id: in_bwt_file
  doc: '(default: BWT computed in RAM)'
  type: File?
  inputBinding:
    prefix: --bwt-file
- id: in_mm_tmp_prefix
  doc: (default="/tmp/mm_new-")
  type: string?
  inputBinding:
    prefix: --mm-tmp-prefix
- id: in_check_index
  doc: (default=false)
  type: boolean?
  inputBinding:
    prefix: --check-index
- id: in_verbose
  doc: (default=false)
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_show_license
  doc: (print license and exit)
  type: boolean?
  inputBinding:
    prefix: --show-license
- id: in_gem_indexer_generate
  doc: -i <input_file>                 (mandatory)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gem2:20200110--0
cwlVersion: v1.1
baseCommand:
- gem-indexer_generate
