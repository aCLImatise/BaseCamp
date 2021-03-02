class: CommandLineTool
id: samtools_fixmate.cwl
inputs:
- id: in_remove_unmapped_reads
  doc: Remove unmapped reads and secondary alignments
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_disable_fr_proper
  doc: Disable FR proper pair check
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_add_cigar_tag
  doc: Add template cigar ct tag
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_add_mate_score
  doc: Add mate score tag
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_uncompressed_output
  doc: Uncompressed output
  type: boolean?
  inputBinding:
    prefix: -u
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
- id: in_verbosity
  doc: Set level of verbosity
  type: long?
  inputBinding:
    prefix: --verbosity
- id: in_in_dot_names_rt_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_out_dot_names_rt_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/samtools:1.11--h6270b1f_0
cwlVersion: v1.1
baseCommand:
- samtools
- fixmate
