class: CommandLineTool
id: flye_samtools_calmd.cwl
inputs:
- id: in_change_identical_bases
  doc: change identical bases to '='
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_uncompressed_bam_output
  doc: uncompressed BAM output (for piping)
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_compressed_bam_output
  doc: compressed BAM output
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_ignored_input_format
  doc: ignored (input format is auto-detected)
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_modify_quality_string
  doc: modify the quality string
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_use_quiet_mode
  doc: use quiet mode to output less debug info to stdout
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_compute_bq_tag
  doc: compute the BQ tag (without -A) or cap baseQ by BAQ (with -A)
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_extended_baq_better
  doc: extended BAQ for better sensitivity but lower specificity
  type: boolean?
  inputBinding:
    prefix: -E
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
  doc: "Number of additional threads to use [0]\n"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_eu_bra_esq
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -eubrAESQ
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_calm_d
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_aln_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_ref_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 3
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
  dockerPull: quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0
cwlVersion: v1.1
baseCommand:
- flye-samtools
- calmd
