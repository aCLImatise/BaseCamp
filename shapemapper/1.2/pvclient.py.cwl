class: CommandLineTool
id: ../../../pvclient.py.cwl
inputs:
- id: in_ct
  doc: Required file containing 1 or more secondary structures in connect-table format
  type: File
  inputBinding:
    prefix: --ct
- id: in_structures
  doc: 'Number of structures in .ct file to render (default: 1)'
  type: long
  inputBinding:
    prefix: --structures
- id: in_shape
  doc: Color nucleotides by reactivity. Red >= 0.85, orange >= 0.4, black < 0.4, gray
    <-998.5
  type: File
  inputBinding:
    prefix: --shape
- id: in_diff
  doc: "[<upperColor> <lowerColor> <upperThreshold> <lowerThreshold>]\nColor nucleotides\
    \ by differential reactivity. Optionally specify the positive and\nnegative thresholds\
    \ and colors (default: green blue 0.5 -0.5)"
  type: File
  inputBinding:
    prefix: --diff
- id: in_range
  doc: "<endNumber> <color>\nColor nucleotides in range (inclusive) given color.\n\
    Multiple ranges and colors may be specified - see example above"
  type: long
  inputBinding:
    prefix: --range
- id: in_out
  doc: "Write files to the location specified.  The structure number will be appended\
    \ to\nthe end of the filename. New folders will not be created. (default: \"structure_\"\
    )"
  type: File
  inputBinding:
    prefix: --out
- id: in_title
  doc: "Write the given string to each postscript image in the upper-left corner instead\
    \ of\nthe name pulled from the .ct file"
  type: File
  inputBinding:
    prefix: --title
- id: in_no_title
  doc: Do not add any title to the rendered images
  type: boolean
  inputBinding:
    prefix: --no_title
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pvclient.py
