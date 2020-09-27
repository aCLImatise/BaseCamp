class: CommandLineTool
id: CircleCompare.cwl
inputs:
- id: in_alternative
  doc: "Specify that an alternative color scheme should be used.\nDefault is not to\
    \ use the alternative color scheme."
  type: boolean
  inputBinding:
    prefix: --alternative
- id: in_exact
  doc: "Specify exact comparison when structure comparison is scored.\nDefault is\
    \ to allow flexible pairings."
  type: boolean
  inputBinding:
    prefix: --exact
- id: in_file
  doc: "Specify that structure file names should be shown in addition to their\ndescriptions.\n\
    Default is not to show structure file names."
  type: boolean
  inputBinding:
    prefix: --file
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
- id: in_number
  doc: "Specify the index of a particular structure in the predicted CT to be\ncompared\
    \ with the accepted CT, one-indexed.\nDefault is -1, which signifies all structures\
    \ output to one file."
  type: File
  inputBinding:
    prefix: --number
- id: in_probability
  doc: "Specify the name of the file from which base pairing probability data will\n\
    be read for annotation. This file should describe pairing data for the\npredicted\
    \ structure, not the accepted structure.\nDefault is no probability annotation\
    \ file used."
  type: boolean
  inputBinding:
    prefix: --probability
- id: in_probability_two
  doc: "Specify the name of the file from which base pairing probability data will\n\
    be read for annotation. This file should describe pairing data for the\naccepted\
    \ structure, not the predicted structure.\nDefault is no probability annotation\
    \ file used."
  type: boolean
  inputBinding:
    prefix: --probability2
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
- id: in_predicted_ct
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_accepted_ct
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output_file
  doc: ''
  type: File
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
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
- CircleCompare
