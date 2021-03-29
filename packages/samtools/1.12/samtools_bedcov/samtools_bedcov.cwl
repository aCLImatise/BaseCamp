class: CommandLineTool
id: samtools_bedcov.cwl
inputs:
- id: in_mapping_quality_threshold
  doc: mapping quality threshold [0]
  type: long?
  inputBinding:
    prefix: -Q
- id: in_use_customized_files
  doc: use customized index files
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_remove_specified_flags
  doc: remove the specified flags from the set used to filter out reads
  type: string?
  inputBinding:
    prefix: -g
- id: in_add_specified_flags
  doc: "add the specified flags to the set used to filter out reads\nThe default set\
    \ is UNMAP,SECONDARY,QCFAIL,DUP or 0x704      -j                  do not include\
    \ deletions (D) and ref skips (N) in bedcov computation"
  type: long?
  inputBinding:
    prefix: -G
- id: in_depth_threshold_number
  doc: depth threshold. Number of reference bases with coverage above and                          including
    this value will be displayed in a separate column
  type: long?
  inputBinding:
    prefix: -d
- id: in_input_fmt_option
  doc: "[=VAL]\nSpecify a single input file format option in the form\nof OPTION or\
    \ OPTION=VALUE"
  type: File?
  inputBinding:
    prefix: --input-fmt-option
- id: in_reference
  doc: Reference sequence FASTA FILE [null]
  type: File?
  inputBinding:
    prefix: --reference
- id: in_verbosity
  doc: "Set level of verbosity\n"
  type: long?
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samtools:1.12--hd5e65b6_0
cwlVersion: v1.1
baseCommand:
- samtools
- bedcov
