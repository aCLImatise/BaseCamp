class: CommandLineTool
id: pandoc.cwl
inputs:
- id: in_strip_empty_paragraphs
  doc: '|reject|all'
  type: string?
  inputBinding:
    prefix: --strip-empty-paragraphs
- id: in_v
  doc: '[:VALUE]        --variable=KEY[:VALUE]'
  type: string?
  inputBinding:
    prefix: -V
- id: in_print_default_data_file
  doc: '|FILE'
  type: File?
  inputBinding:
    prefix: --print-default-data-file
- id: in_dpi
  doc: '|lf|native'
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_wrap
  doc: '|none|preserve'
  type: string?
  inputBinding:
    prefix: --wrap
- id: in_table_of_contents
  doc: '|FILE'
  type: long?
  inputBinding:
    prefix: --table-of-contents
- id: in_include_before_body
  doc: :VALUE
  type: File?
  inputBinding:
    prefix: --include-before-body
- id: in_reference_location
  doc: '|section|document'
  type: string?
  inputBinding:
    prefix: --reference-location
- id: in_top_level_division
  doc: '|chapter|part'
  type: string?
  inputBinding:
    prefix: --top-level-division
- id: in_default_image_extension
  doc: '|javascript|references'
  type: string?
  inputBinding:
    prefix: --default-image-extension
- id: in_citation_abbreviations
  doc: '[=URL]'
  type: string?
  inputBinding:
    prefix: --citation-abbreviations
- id: in_math_jax
  doc: '[=URL]'
  type: boolean?
  inputBinding:
    prefix: --mathjax
- id: in_kate_x
  doc: '[=URL]'
  type: boolean?
  inputBinding:
    prefix: --katex
- id: in_m
  doc: '[URL]               --latexmathml[=URL], --asciimathml[=URL]'
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_mime_tex
  doc: '[=URL]'
  type: boolean?
  inputBinding:
    prefix: --mimetex
- id: in_js_math
  doc: '[=URL]'
  type: boolean?
  inputBinding:
    prefix: --jsmath
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pandoc
