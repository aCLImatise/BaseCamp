class: CommandLineTool
id: ../../../checkm_taxon_set.cwl
inputs:
- id: in_quiet
  doc: suppress console output
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_tmpdir
  doc: specify an alternative directory for temporary files
  type: Directory
  inputBinding:
    prefix: --tmpdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- checkm
- taxon_set
