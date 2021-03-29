class: CommandLineTool
id: samtools_depad.cwl
inputs:
- id: in_output_sam_default
  doc: Output is SAM (default is BAM)
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_input_sam_default
  doc: Input is SAM (default is BAM)
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_uncompressed_bam_output
  doc: Uncompressed BAM output (can't use with -s)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_fast_compression_bam
  doc: Fast compression BAM output (can't use with -s)
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_reference
  doc: Padded reference sequence file [null]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_output_file_name
  doc: Output file name [stdout]
  type: File?
  inputBinding:
    prefix: -o
- id: in_no_pg
  doc: do not add a PG line
  type: boolean?
  inputBinding:
    prefix: --no-PG
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --input-fmt-option
- id: in_output_fmt
  doc: "[,OPT[=VAL]]...\nSpecify output format (SAM, BAM, CRAM)"
  type: string?
  inputBinding:
    prefix: --output-fmt
- id: in_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --output-fmt-option
- id: in_write_index
  doc: Automatically index the output files [off]
  type: boolean?
  inputBinding:
    prefix: --write-index
- id: in_verbosity
  doc: Set level of verbosity
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: Output file name [stdout]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_name)
- id: out_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fmt_option)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samtools:1.12--hd5e65b6_0
cwlVersion: v1.1
baseCommand:
- samtools
- depad
