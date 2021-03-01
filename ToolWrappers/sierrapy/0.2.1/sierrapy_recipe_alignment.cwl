class: CommandLineTool
id: sierrapy_recipe_alignment.cwl
inputs:
- id: in_gap_handling
  doc: "[squeeze|hxb2strip]\nSpecify how you want the recipe to handle\nthe gaps.\n\
    Specify \"squeeze\" to keep every\ngap in the result alignment; \"hxb2_strip\"\
    \ to\nstrip out non-HXB2 columns."
  type: boolean?
  inputBinding:
    prefix: --gap-handling
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sierrapy
- recipe
- alignment
