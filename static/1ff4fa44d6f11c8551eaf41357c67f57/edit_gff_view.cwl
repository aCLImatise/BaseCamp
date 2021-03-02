class: CommandLineTool
id: edit_gff_view.cwl
inputs:
- id: in_keep_empty
  doc: Keep annotations where not all attributes were found
  type: boolean?
  inputBinding:
    prefix: --keep-empty
- id: in_attributes
  doc: "Attributes of GFF file to print. For example `-a\ntaxon_id` will print `taxon_id`\
    \ for all annotations.\nMultiple attributes can be printed, for example: `-a\n\
    taxon_id -a gene_id`  [required]"
  type: File?
  inputBinding:
    prefix: --attributes
- id: in_separator
  doc: Fields separator, default to `TAB`
  type: string?
  inputBinding:
    prefix: --separator
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
- view
