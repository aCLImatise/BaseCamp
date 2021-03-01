class: CommandLineTool
id: samtools_addreplacerg.cwl
inputs:
- id: in_set_mode_orphanonly
  doc: Set the mode of operation from one of overwrite_all, orphan_only [overwrite_all]
  type: string?
  inputBinding:
    prefix: -m
- id: in_where_write_output
  doc: Where to write output to [stdout]
  type: File?
  inputBinding:
    prefix: -o
- id: in_rg_line_text
  doc: '@RG line text'
  type: string?
  inputBinding:
    prefix: -r
- id: in_id_rg_use
  doc: ID of @RG line in existing header to use
  type: string?
  inputBinding:
    prefix: -R
- id: in_no_pg
  doc: Do not add a PG line
  type: boolean?
  inputBinding:
    prefix: --no-PG
- id: in_input_fmt
  doc: "[,OPT[=VAL]]...\nSpecify input format (SAM, BAM, CRAM)"
  type: string?
  inputBinding:
    prefix: --input-fmt
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
  doc: "Set level of verbosity\n"
  type: long?
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_fmt_option
  doc: "[=VAL]\nSpecify a single output file format option in the form\nof OPTION\
    \ or OPTION=VALUE"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_fmt_option)
hints: []
cwlVersion: v1.1
baseCommand:
- samtools
- addreplacerg
