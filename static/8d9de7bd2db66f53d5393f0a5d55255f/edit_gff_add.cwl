class: CommandLineTool
id: edit_gff_add.cwl
inputs:
- id: in_attributes
  doc: "Add attributes to the GFF file. For example `-a\ntaxon_id 2` will add taxon_id\
    \ attribute with a\nvalue of 2 to all annotations. Multiple attributes\ncan be\
    \ set, for example: `-a taxon_id 2 -a gene_id\nTEST`  [required]"
  type: File?
  inputBinding:
    prefix: --attributes
- id: in_overwrite
  doc: Overwrite the attributes if present
  type: boolean?
  inputBinding:
    prefix: --overwrite
- id: in_only_edited
  doc: Only output edited annotations
  type: boolean?
  inputBinding:
    prefix: --only-edited
- id: in_uids
  doc: "Only edit annotations with `uid` in a file (one\nper line)"
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
- add
