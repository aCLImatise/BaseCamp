class: CommandLineTool
id: flye_samtools_split.cwl
inputs:
- id: in_output_filename_format
  doc: output filename format string ["%*_%#.%."]
  type: File
  inputBinding:
    prefix: -f
- id: in_verbose_output
  doc: verbose output
  type: boolean
  inputBinding:
    prefix: -v
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
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: Number of additional threads to use [0]
  type: long
  inputBinding:
    prefix: --threads
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_split
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename_format
  doc: output filename format string ["%*_%#.%."]
  type: File
  outputBinding:
    glob: $(inputs.in_output_filename_format)
- id: out_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File
  outputBinding:
    glob: $(inputs.in_output_fmt_option)
cwlVersion: v1.1
baseCommand:
- flye-samtools
- split
