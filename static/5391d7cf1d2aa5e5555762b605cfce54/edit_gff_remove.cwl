class: CommandLineTool
id: edit_gff_remove.cwl
inputs:
- id: in_attributes
  doc: "Remove attributes to the GFF file. For example `-a\ntaxon_id` will remove\
    \ taxon_id attribute for all\nannotations. Multiple attributes can be removed,\
    \ for\nexample: `-a taxon_id -a gene_id`  [required]"
  type: File?
  inputBinding:
    prefix: --attributes
- id: in_uids
  doc: "Only edit annotations with `uid` in a file (one per\nline)"
  type: File?
  inputBinding:
    prefix: --uids
- id: in_input_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- edit-gff
- remove
