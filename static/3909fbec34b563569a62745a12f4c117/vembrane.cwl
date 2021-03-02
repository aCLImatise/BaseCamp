class: CommandLineTool
id: vembrane.cwl
inputs:
- id: in_output
  doc: "Output file, if not specified, output is written to\nSTDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_output_fmt
  doc: Output format.
  type: string?
  inputBinding:
    prefix: --output-fmt
- id: in_annotation_key
  doc: The INFO key for the annotation field.
  type: string?
  inputBinding:
    prefix: --annotation-key
- id: in_statistics
  doc: Write statistics to this file.
  type: File?
  inputBinding:
    prefix: --statistics
- id: in_keep_unmatched
  doc: "Keep all annotations of a variant if at least one of\nthem passes the expression.\n"
  type: boolean?
  inputBinding:
    prefix: --keep-unmatched
- id: in_vcf
  doc: The file containing the variants.
  type: string
  inputBinding:
    position: 0
- id: in_expression
  doc: "Filter variants and annotations. If this removes all\nannotations, the variant\
    \ is removed as well."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file, if not specified, output is written to\nSTDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- vembrane
