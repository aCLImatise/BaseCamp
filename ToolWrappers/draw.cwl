class: CommandLineTool
id: draw.cwl
inputs:
- id: in_circle
  doc: "Specify that the structure should be drawn with its backbone stretched\naround\
    \ a circle. Note that pseudoknotted structures will be drawn\ncircularized even\
    \ if this option is not specified.\nDefault is to show a collapsed structure."
  type: boolean
  inputBinding:
    prefix: --circle
- id: in_flat
  doc: "Specify that the structure should be drawn with its backbone stretched in\
    \ a\nstraight line.\nDefault is to show a collapsed structure."
  type: boolean
  inputBinding:
    prefix: --flat
- id: in_levo_rotatory
  doc: "Specify that the drawn structure is rendered counterclockwise.\nDefault is\
    \ to render drawn structures clockwise."
  type: boolean
  inputBinding:
    prefix: --levorotatory
- id: in_svg
  doc: "Specify that the output file should be an SVG image file, rather than a\n\
    Postscript image file. Note that only one SVG image can be written into a\nparticular\
    \ file, so the structure number flag must also be specified when\nwriting an SVG\
    \ document."
  type: boolean
  inputBinding:
    prefix: --svg
- id: in_uncircled
  doc: "Specify that no circles should surround nucleotides when drawing.\nDefault\
    \ is to surround nucleotides with circles."
  type: boolean
  inputBinding:
    prefix: --uncircled
- id: in_desc
  doc: "Configure the output of descriptions. Valid values are: (1) \"\" or \"~none\"\
    \n-- Do not write a description (2) \"~file\" -- If the default description\n\
    corresponds to a file or path, use only the base name of the path (i.e. no\ndirectory\
    \ or file extension). (3) \"~~\" or \"~default\" -- Use the default\ndescription\
    \ (this is the same as not specifying the flag) (4)\n\"~list|DESC1|DESC2|DESC3\"\
    \ -- use this syntax when the output is expected to\nhave more than one plot.\
    \ It specifies a list of descriptions will be\napplied in the order given. The\
    \ character immediately after \"~list\" will be\nused as the separator. (5) Any\
    \ other value is assumed to be the literal\ndescription you want to have displayed\
    \ in the plot legend."
  type: File
  inputBinding:
    prefix: --desc
- id: in_end
  doc: "Specify the ending structure number. Use this in combination with the\n--number\
    \ (-n) flag to specify a range of structures to draw, e.g.\n\"--number 3 --end\
    \ 7\" to draw structures 3 through 7."
  type: boolean
  inputBinding:
    prefix: --end
- id: in_loop_probability
  doc: "Specify the name of the partition function file from which loop probability\n\
    data will be read for annotation. This file should describe pairing data\nfor\
    \ the predicted structure, not the accepted structure.\nDefault is no probability\
    \ annotation file used."
  type: boolean
  inputBinding:
    prefix: --loopprobability
- id: in_max_structures
  doc: "Limit the total number of structures drawn. This is useful in automated\n\
    tool chains to prevent creation of huge output files when many results are\nreturned\
    \ from another program (e.g. AllSub)."
  type: boolean
  inputBinding:
    prefix: --maxstructures
- id: in_number
  doc: "Specify the index of a particular structure in the predicted CT to be\ncompared\
    \ with the accepted CT, one-indexed.\nDefault is -1, which signifies all structures\
    \ output to one file."
  type: File
  inputBinding:
    prefix: --number
- id: in_probability
  doc: "Specify the name of the partition function file from which base pairing\n\
    probability data will be read for annotation. This file should describe\npairing\
    \ data for the predicted structure, not the accepted structure.\nDefault is no\
    \ probability annotation file used."
  type: boolean
  inputBinding:
    prefix: --probability
- id: in_shape
  doc: "Specify the name of the file from which SHAPE data will be read for\nannotation.\n\
    Default is no SHAPE annotation file used."
  type: boolean
  inputBinding:
    prefix: --SHAPE
- id: in_text
  doc: "Specify the name of the text file from which base pairing probability data\n\
    will be read for annotation. This file should describe pairing data for the\n\
    predicted structure, not the accepted structure.\nDefault is no probability annotation\
    \ file used.\n"
  type: boolean
  inputBinding:
    prefix: --text
- id: in_ct_file
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
- id: out_desc
  doc: "Configure the output of descriptions. Valid values are: (1) \"\" or \"~none\"\
    \n-- Do not write a description (2) \"~file\" -- If the default description\n\
    corresponds to a file or path, use only the base name of the path (i.e. no\ndirectory\
    \ or file extension). (3) \"~~\" or \"~default\" -- Use the default\ndescription\
    \ (this is the same as not specifying the flag) (4)\n\"~list|DESC1|DESC2|DESC3\"\
    \ -- use this syntax when the output is expected to\nhave more than one plot.\
    \ It specifies a list of descriptions will be\napplied in the order given. The\
    \ character immediately after \"~list\" will be\nused as the separator. (5) Any\
    \ other value is assumed to be the literal\ndescription you want to have displayed\
    \ in the plot legend."
  type: File
  outputBinding:
    glob: $(inputs.in_desc)
- id: out_number
  doc: "Specify the index of a particular structure in the predicted CT to be\ncompared\
    \ with the accepted CT, one-indexed.\nDefault is -1, which signifies all structures\
    \ output to one file."
  type: File
  outputBinding:
    glob: $(inputs.in_number)
- id: out_output_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- draw
