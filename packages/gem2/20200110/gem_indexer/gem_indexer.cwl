class: CommandLineTool
id: gem_indexer.cwl
inputs:
- id: in_mandatory
  doc: (mandatory)
  type: string?
  inputBinding:
    prefix: -o
- id: in_strip_unknown_bases_threshold
  doc: "'disable'|<integer>\n(default=50)"
  type: boolean?
  inputBinding:
    prefix: --strip-unknown-bases-threshold
- id: in_threads
  doc: "(for the BWT generator,\ndefault=1)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sampling_rate
  doc: (default=32 -- 16/32/64/128 ok)
  type: long?
  inputBinding:
    prefix: --sampling-rate
- id: in_keep_temporaries
  doc: '(default: deleted in the end)'
  type: boolean?
  inputBinding:
    prefix: --keep-temporaries
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
- id: in_gem_indexer
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
- gem-indexer
