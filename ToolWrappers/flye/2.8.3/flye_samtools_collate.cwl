class: CommandLineTool
id: flye_samtools_collate.cwl
inputs:
- id: in_output_to_stdout
  doc: output to stdout
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_output_file_name
  doc: output file name (use prefix if not set)
  type: File?
  inputBinding:
    prefix: -o
- id: in_uncompressed_bam_output
  doc: uncompressed BAM output
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_fast_only_primary
  doc: fast (only primary alignments)
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_working_reads_stored
  doc: working reads stored (with -f) [10000]
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_compression_level
  doc: compression level [1]
  type: long?
  inputBinding:
    prefix: -l
- id: in_number_temporary_files
  doc: number of temporary files [64]
  type: long?
  inputBinding:
    prefix: -n
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
- id: in_ou
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -Ou
- id: in_sam_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_collate
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_prefix
  doc: ''
  type: string?
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_name
  doc: output file name (use prefix if not set)
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
  dockerPull: quay.io/biocontainers/flye:2.8.3--py38h1c8e9b9_0
cwlVersion: v1.1
baseCommand:
- flye-samtools
- collate
