class: CommandLineTool
id: ProbabilityPlot.cwl
inputs:
- id: in_log_one_zero
  doc: "Specifies that the input file format is a dot plot text file of log10 base\n\
    pair probabilities. Giving this flag with one of the text options would\ngive\
    \ a file identical to the input file."
  type: boolean
  inputBinding:
    prefix: --log10
- id: in_matrix
  doc: "Specifies that the input file format is a plain text matrix of base pair\n\
    probabilities."
  type: boolean
  inputBinding:
    prefix: --matrix
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
- id: in_desc
  doc: "Configure the output of descriptions. Valid values are: (1) \"\" or \"~none\"\
    \n-- Do not write a description (2) \"~file\" -- If the default description\n\
    corresponds to a file or path, use only the base name of the path (i.e. no\ndirectory\
    \ or file extension). (3) \"~~\" or \"~default\" -- Use the default\ndescription\
    \ (this is the same as not specifying the flag) (4)\n\"~list|DESC1|DESC2|DESC3\"\
    \ -- use this syntax when the output is expected to\nhave more than one plot.\
    \ It specifies a list of descriptions will be\napplied in the order given. The\
    \ character immediately after \"~list\" will be\nused as the separator (i.e. it\
    \ need not be the bar (|) character. (5) Any\nother value is assumed to be the\
    \ literal description you want to have\ndisplayed in the plot legend."
  type: File
  inputBinding:
    prefix: --desc
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
- id: in_input_file
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
- id: out_desc
  doc: "Configure the output of descriptions. Valid values are: (1) \"\" or \"~none\"\
    \n-- Do not write a description (2) \"~file\" -- If the default description\n\
    corresponds to a file or path, use only the base name of the path (i.e. no\ndirectory\
    \ or file extension). (3) \"~~\" or \"~default\" -- Use the default\ndescription\
    \ (this is the same as not specifying the flag) (4)\n\"~list|DESC1|DESC2|DESC3\"\
    \ -- use this syntax when the output is expected to\nhave more than one plot.\
    \ It specifies a list of descriptions will be\napplied in the order given. The\
    \ character immediately after \"~list\" will be\nused as the separator (i.e. it\
    \ need not be the bar (|) character. (5) Any\nother value is assumed to be the\
    \ literal description you want to have\ndisplayed in the plot legend."
  type: File
  outputBinding:
    glob: $(inputs.in_desc)
- id: out_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- ProbabilityPlot
