class: CommandLineTool
id: transpose_biom.py.cwl
inputs:
- id: in_input_biom_fp
  doc: The BIOM-format file.
  type: File?
  inputBinding:
    prefix: --input_biom_fp
- id: in_mapping
  doc: "The mapping file specifying group information for each\nsample."
  type: File?
  inputBinding:
    prefix: --mapping
- id: in_map_category
  doc: "A mapping category, such as TreatmentType, that will\nbe used to split the\
    \ data into separate BIOM files;\none for each value found in the category."
  type: string?
  inputBinding:
    prefix: --map_category
- id: in_output_biom_fp
  doc: The BIOM-format file to write.
  type: File?
  inputBinding:
    prefix: --output_biom_fp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- transpose_biom.py
