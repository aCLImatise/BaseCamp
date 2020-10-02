class: CommandLineTool
id: flye_samtools_depad.cwl
inputs:
- id: in_output_sam_default
  doc: Output is SAM (default is BAM)
  type: boolean
  inputBinding:
    prefix: -s
- id: in_input_sam_default
  doc: Input is SAM (default is BAM)
  type: boolean
  inputBinding:
    prefix: -S
- id: in_uncompressed_bam_output
  doc: Uncompressed BAM output (can't use with -s)
  type: boolean
  inputBinding:
    prefix: -u
- id: in_fast_compression_bam
  doc: Fast compression BAM output (can't use with -s)
  type: boolean
  inputBinding:
    prefix: '-1'
- id: in_reference
  doc: Padded reference sequence file [null]
  type: File
  inputBinding:
    prefix: --reference
- id: in_output_file_name
  doc: Output file name [stdout]
  type: File
  inputBinding:
    prefix: -o
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File
  inputBinding:
    prefix: --input-fmt-option
- id: in_output_fmt
  doc: "[,OPT[=VAL]]...\nSpecify output format (SAM, BAM, CRAM)"
  type: string
  inputBinding:
    prefix: --output-fmt
- id: in_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File
  inputBinding:
    prefix: --output-fmt-option
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_de_pad
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: Output file name [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
- id: out_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File
  outputBinding:
    glob: $(inputs.in_output_fmt_option)
cwlVersion: v1.1
baseCommand:
- flye-samtools
- depad
