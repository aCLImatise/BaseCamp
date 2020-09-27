class: CommandLineTool
id: osra.cwl
inputs:
- id: in_learn
  doc: Print out all structure guesses with confidence parameters
  type: boolean
  inputBinding:
    prefix: --learn
- id: in__write_filenamewrite
  doc: ",  --write <filename>\nWrite recognized structures to text file"
  type: File
  inputBinding:
    prefix: -w
- id: in_preview
  doc: Preview Image
  type: File
  inputBinding:
    prefix: --preview
- id: in_dimensions_size_dimensions
  doc: "<dimensions, 300x400>,  --size <dimensions, 300x400>\nResize image on output"
  type: boolean
  inputBinding:
    prefix: -s
- id: in__output_filename
  doc: ",  --output <filename prefix>\nWrite recognized structures to image files\
    \ with given prefix"
  type: File
  inputBinding:
    prefix: -o
- id: in__verbosebe_verbose
  doc: ",  --verbose\nBe verbose and print the program flow"
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debugprint_information
  doc: ",  --debug\nPrint out debug information on spelling corrections"
  type: boolean
  inputBinding:
    prefix: -d
- id: in__superatom_configfilesuperatom
  doc: ",  --superatom <configfile>\nSuperatom label map to SMILES"
  type: File
  inputBinding:
    prefix: -a
- id: in__spelling_correction
  doc: ",  --spelling <configfile>\nSpelling correction dictionary"
  type: File
  inputBinding:
    prefix: -l
- id: in__bondshow_average
  doc: ",  --bond\nShow average bond length in pixels (only for SDF/SMI/CAN output\n\
    format)"
  type: boolean
  inputBinding:
    prefix: -b
- id: in__coordinatesshow_surrounding
  doc: ",  --coordinates\nShow surrounding box coordinates (only for SDF/SMI/CAN output\
    \ format)"
  type: boolean
  inputBinding:
    prefix: -c
- id: in__pageshow_page
  doc: ",  --page\nShow page number for PDF/PS/TIFF documents (only for SDF/SMI/CAN\n\
    output format)"
  type: boolean
  inputBinding:
    prefix: -e
- id: in__guessprint_resolution
  doc: ",  --guess\nPrint out resolution guess"
  type: boolean
  inputBinding:
    prefix: -g
- id: in__printprint_estimate
  doc: ",  --print\nPrint out confidence estimate"
  type: boolean
  inputBinding:
    prefix: -p
- id: in_embedded_format
  doc: Embedded format
  type: string
  inputBinding:
    prefix: --embedded-format
- id: in__format_cansmisdfoutput
  doc: ",  --format <can/smi/sdf>\nOutput format"
  type: string
  inputBinding:
    prefix: -f
- id: in__adaptiveadaptive_thresholding
  doc: ",  --adaptive\nAdaptive thresholding pre-processing, useful for low light/low\n\
    contrast images"
  type: boolean
  inputBinding:
    prefix: -i
- id: in__jaggyadditional_thinningscaling
  doc: ",  --jaggy\nAdditional thinning/scaling down of low quality documents"
  type: boolean
  inputBinding:
    prefix: -j
- id: in_default_rounds_
  doc: "<default: 0 rounds>,  --unpaper <default: 0 rounds>\nPre-process image with\
    \ unpaper algorithm, rounds"
  type: boolean
  inputBinding:
    prefix: -u
- id: in__threshold_gray
  doc: ",  --threshold <0.2..0.8>\nGray level threshold"
  type: long
  inputBinding:
    prefix: -t
- id: in_default_auto_autoresolution
  doc: "<default: auto>,  --resolution <default: auto>\nResolution in dots per inch"
  type: boolean
  inputBinding:
    prefix: -r
- id: in__negateinvert_color
  doc: ",  --negate\nInvert color (white on black)"
  type: boolean
  inputBinding:
    prefix: -n
- id: in__rotate_rotate
  doc: ",  --rotate <0..360>\nRotate image clockwise by specified number of degrees"
  type: long
  inputBinding:
    prefix: -R
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
- id: out__output_filename
  doc: ",  --output <filename prefix>\nWrite recognized structures to image files\
    \ with given prefix"
  type: File
  outputBinding:
    glob: $(inputs.in__output_filename)
cwlVersion: v1.1
baseCommand:
- osra
