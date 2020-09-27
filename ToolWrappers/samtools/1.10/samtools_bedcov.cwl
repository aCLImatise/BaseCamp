class: CommandLineTool
id: samtools_bedcov.cwl
inputs:
- id: in_mapping_quality_threshold
  doc: mapping quality threshold [0]
  type: long
  inputBinding:
    prefix: -Q
- id: in_use_customized_files
  doc: use customized index files
  type: boolean
  inputBinding:
    prefix: -X
- id: in_include_deletions_d
  doc: do not include deletions (D) and ref skips (N) in bedcov computation
  type: boolean
  inputBinding:
    prefix: -j
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File
  inputBinding:
    prefix: --input-fmt-option
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File
  inputBinding:
    prefix: --reference
- id: in_verbosity
  doc: "Set level of verbosity\n"
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_in_dot_bed
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- samtools
- bedcov
