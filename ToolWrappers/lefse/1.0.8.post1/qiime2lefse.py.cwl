class: CommandLineTool
id: qiime2lefse.py.cwl
inputs:
- id: in_in
  doc: '[INPUT_FILE]     the Qiime OTU table file [ stdin if not present ]'
  type: boolean
  inputBinding:
    prefix: --in
- id: in_md
  doc: "[METADATA_FILE]  the Qiime OTU table file [ only OTU table without\nmetadata\
    \ if not present ]"
  type: boolean
  inputBinding:
    prefix: --md
- id: in_out
  doc: '[OUTPUT_FILE]   the output file [stdout if not present]'
  type: File
  inputBinding:
    prefix: --out
- id: in_attribute_attribute_use_class
  doc: attribute    the attribute to use as class
  type: string
  inputBinding:
    prefix: -c
- id: in_attribute_use_subclass
  doc: "attribute\nthe attribute to use as subclass"
  type: string
  inputBinding:
    prefix: -s
- id: in_attribute_attribute_use_as
  doc: attribute  the attribute to use as subject
  type: string
  inputBinding:
    prefix: -u
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_metadata_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: '[OUTPUT_FILE]   the output file [stdout if not present]'
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- qiime2lefse.py
