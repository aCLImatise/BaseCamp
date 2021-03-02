class: CommandLineTool
id: gem_indexer_bwt_dna.cwl
inputs:
- id: in_mandatory
  doc: (mandatory)
  type: File?
  inputBinding:
    prefix: -o
- id: in_threads
  doc: (default=1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_keep_temporaries
  doc: '(default: deleted in the end)'
  type: boolean?
  inputBinding:
    prefix: --keep-temporaries
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
- id: in_gem_indexer_bwt_dna
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
- gem-indexer_bwt-dna
