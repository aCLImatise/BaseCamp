class: CommandLineTool
id: samtools_split.cwl
inputs:
- id: in_output_filename_format
  doc: output filename format string ["%*_%#.%."]
  type: File?
  inputBinding:
    prefix: -f
- id: in_put_reads_rg
  doc: put reads with no RG tag or an unrecognised RG tag in FILE1
  type: File?
  inputBinding:
    prefix: -u
- id: in_override_header_only
  doc: override the header with FILE2 (-u file only)
  type: string[]
  inputBinding:
    prefix: -h
- id: in_verbose_output
  doc: verbose output
  type: boolean?
  inputBinding:
    prefix: -v
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
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: Number of additional threads to use [0]
  type: long?
  inputBinding:
    prefix: --threads
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_filename_format
  doc: output filename format string ["%*_%#.%."]
  type: File?
  outputBinding:
    glob: $(inputs.in_output_filename_format)
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
- split
