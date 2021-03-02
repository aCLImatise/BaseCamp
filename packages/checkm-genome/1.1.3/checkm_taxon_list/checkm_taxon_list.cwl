class: CommandLineTool
id: checkm_taxon_list.cwl
inputs:
- id: in_rank
  doc: 'restrict list to specified taxonomic rank (default: ALL)'
  type: string?
  inputBinding:
    prefix: --rank
- id: in_tmpdir
  doc: specify an alternative directory for temporary files
  type: Directory?
  inputBinding:
    prefix: --tmpdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/checkm-genome:1.1.3--py_1
cwlVersion: v1.1
baseCommand:
- checkm
- taxon_list
