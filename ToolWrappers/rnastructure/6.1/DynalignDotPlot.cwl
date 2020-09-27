class: CommandLineTool
id: DynalignDotPlot.cwl
inputs:
- id: in_sequence_two
  doc: "Specifies that the dot plot should be the second sequence. If no sequence\n\
    is specified, the plot is the first sequence."
  type: boolean
  inputBinding:
    prefix: --sequence2
- id: in_svg
  doc: "Specify that the output file should be an SVG image file, rather than a\n\
    Postscript image file."
  type: File
  inputBinding:
    prefix: --svg
- id: in_text
  doc: Specifies that output should be a dot plot (text) file.
  type: File
  inputBinding:
    prefix: --text
- id: in_entries
  doc: "Specifies the number of colors in the dot plot.\nDefault is 5 colors. Minimum\
    \ is 3 colors. Maximum is 15 colors."
  type: boolean
  inputBinding:
    prefix: --entries
- id: in_maximum
  doc: "Specifies the maximum value that is viewable in the plot.\nDefault is the\
    \ largest allowable point in a given data file. If the given\nvalue is greater\
    \ than the default, it is ignored."
  type: boolean
  inputBinding:
    prefix: --maximum
- id: in_minimum
  doc: "Specifies the minimum value that is viewable in the plot.\nDefault is the\
    \ smallest allowable point in a given data file. If the given\nvalue is less than\
    \ the default, it is ignored.\n"
  type: boolean
  inputBinding:
    prefix: --minimum
- id: in_dyn_align_save_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_svg
  doc: "Specify that the output file should be an SVG image file, rather than a\n\
    Postscript image file."
  type: File
  outputBinding:
    glob: $(inputs.in_svg)
- id: out_text
  doc: Specifies that output should be a dot plot (text) file.
  type: File
  outputBinding:
    glob: $(inputs.in_text)
- id: out_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- DynalignDotPlot
