class: CommandLineTool
id: osra.cwl
inputs:
- id: in_learn
  doc: Print out all structure guesses with confidence parameters
  type: boolean?
  inputBinding:
    prefix: --learn
- id: in_write
  doc: Write recognized structures to text file
  type: File?
  inputBinding:
    prefix: --write
- id: in_preview
  doc: Preview Image
  type: File?
  inputBinding:
    prefix: --preview
- id: in_dimensions_size_dimensions
  doc: "<dimensions, 300x400>,  --size <dimensions, 300x400>\nResize image on output"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_output
  doc: Write recognized structures to image files with given prefix
  type: File?
  inputBinding:
    prefix: --output
- id: in_verbose
  doc: Be verbose and print the program flow
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Print out debug information on spelling corrections
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_super_atom
  doc: Superatom label map to SMILES
  type: File?
  inputBinding:
    prefix: --superatom
- id: in_spelling
  doc: Spelling correction dictionary
  type: File?
  inputBinding:
    prefix: --spelling
- id: in_bond
  doc: "Show average bond length in pixels (only for SDF/SMI/CAN output\nformat)"
  type: boolean?
  inputBinding:
    prefix: --bond
- id: in_coordinates
  doc: Show surrounding box coordinates (only for SDF/SMI/CAN output format)
  type: boolean?
  inputBinding:
    prefix: --coordinates
- id: in_page
  doc: "Show page number for PDF/PS/TIFF documents (only for SDF/SMI/CAN\noutput format)"
  type: boolean?
  inputBinding:
    prefix: --page
- id: in_guess
  doc: Print out resolution guess
  type: boolean?
  inputBinding:
    prefix: --guess
- id: in_print
  doc: Print out confidence estimate
  type: boolean?
  inputBinding:
    prefix: --print
- id: in_embedded_format
  doc: Embedded format
  type: string?
  inputBinding:
    prefix: --embedded-format
- id: in_format
  doc: Output format
  type: string?
  inputBinding:
    prefix: --format
- id: in_adaptive
  doc: "Adaptive thresholding pre-processing, useful for low light/low\ncontrast images"
  type: boolean?
  inputBinding:
    prefix: --adaptive
- id: in_jaggy
  doc: Additional thinning/scaling down of low quality documents
  type: boolean?
  inputBinding:
    prefix: --jaggy
- id: in_default_rounds_default
  doc: "<default: 0 rounds>,  --unpaper <default: 0 rounds>\nPre-process image with\
    \ unpaper algorithm, rounds"
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_threshold
  doc: Gray level threshold
  type: long?
  inputBinding:
    prefix: --threshold
- id: in_default_auto_
  doc: "<default: auto>,  --resolution <default: auto>\nResolution in dots per inch"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_negate
  doc: Invert color (white on black)
  type: boolean?
  inputBinding:
    prefix: --negate
- id: in_rotate
  doc: Rotate image clockwise by specified number of degrees
  type: long?
  inputBinding:
    prefix: --rotate
- id: in_three_zero_zero_x_four_zero_zero
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_config_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_inch_i_slash_smi_slash_can
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_rounds
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- osra
